import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sephora/register/widgets/number_button.dart';
import 'package:sephora/register/widgets/otp_circle.dart';
import 'package:sephora/register/widgets/register_header.dart';

import 'activation_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  Timer? _timer;
  int _duration = (4 * 60) + 30;

  final int _otpLength = 6;
  String _otpValue = '';

  @override
  void initState() {
    _startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const RegisterHeader(title: 'OTP'),
              const SizedBox(height: 20),
              SizedBox(
                height: 82.5,
                width: 82.5,
                child: Image.asset('assets/mobile.png'),
              ),
              const SizedBox(height: 28.75),
              Text(
                _formattedTime(timeInSecond: _duration),
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Color(0xFF2B2F3C),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                  children: [
                    Expanded(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          text:
                              'Masukkan 6 digit kode OTP yang telah dikirim melalui nomor telepon',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xFF2B2F3C),
                          ),
                          children: [
                            TextSpan(
                              text: ' +62 81231231232',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color(0xFF2F82FF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 33.14),
              OtpCircle(
                otpValue: _otpValue,
                otpLength: _otpLength,
              ),
              const SizedBox(height: 33.14),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ActivationScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Kirim Ulang',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xFF2F82FF),
                  ),
                ),
              ),
              const SizedBox(height: 27),
              NumberButton(
                onChanged: (String value) {
                  if (value == 'hapus') {
                    _deleteValue();
                  }
                  if (_otpValue.length < _otpLength && value != 'hapus') {
                    setState(() {
                      _otpValue += value;
                    });
                    print('input number : $_otpValue');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (_duration != 0) {
          setState(() {
            _duration--;
          });
        } else {
          setState(() {
            _timer!.cancel();
          });
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => CupertinoAlertDialog(
              title: const Text('Waktu habis'),
              content: const Text(
                  'Silahkan pilih "kirim ulang" untuk mendapatkan kembali kode OTP baru'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Oke'),
                )
              ],
            ),
          );
        }
      },
    );
  }

  _formattedTime({required int timeInSecond}) {
    String minutes = (_duration ~/ 60).toString().padLeft(2, '0');
    String second = (_duration % 60).toString().padLeft(2, '0');
    return '$minutes : $second';
  }

  void _deleteValue() {
    if (_otpValue.isNotEmpty) {
      _otpValue = _otpValue.substring(0, _otpValue.length - 1);
      print('delete number : $_otpValue');
    }
  }
}
