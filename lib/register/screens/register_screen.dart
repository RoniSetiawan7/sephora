import 'package:flutter/material.dart';
import 'package:sephora/register/widgets/register_desctiption.dart';
import 'package:sephora/register/widgets/register_footer.dart';
import 'package:sephora/register/widgets/register_form_field.dart';
import 'package:sephora/register/widgets/register_header.dart';

import 'otp_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F7FD),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const RegisterHeader(title: 'Buat MPIN'),
            const SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 3,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: SingleChildScrollView(
                        child: Column(
                          children: const [
                            RegisterDescription(
                              icon: Icons.card_giftcard_outlined,
                              title: 'Informasi Data Diri',
                              description:
                                  'Masukkan Informasi data diri Anda untuk proses pembuatan akun',
                            ),
                            SizedBox(height: 20),
                            Divider(color: Color(0xFFE9F0FF)),
                            SizedBox(height: 10),
                            RegisterFormField(hintText: 'NIK'),
                            RegisterFormField(hintText: 'No. Telepon'),
                            RegisterFormField(hintText: 'Nama Lengkap'),
                            RegisterFormField(
                              hintText: 'Tanggal Lahir',
                              suffixIcon: Icons.calendar_today_outlined,
                            ),
                            RegisterFormField(hintText: 'Email'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            RegisterFooter(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OtpScreen(),
                  ),
                );
              },
              text: 'Selanjutnya',
            )
          ],
        ),
      ),
    );
  }
}
