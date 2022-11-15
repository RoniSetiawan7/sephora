import 'package:flutter/material.dart';
import 'package:sephora/register/widgets/register_desctiption.dart';
import 'package:sephora/register/widgets/register_footer.dart';
import 'package:sephora/register/widgets/register_form_field.dart';
import 'package:sephora/register/widgets/register_header.dart';

class ActivationScreen extends StatefulWidget {
  const ActivationScreen({super.key});

  @override
  State<ActivationScreen> createState() => _ActivationScreenState();
}

class _ActivationScreenState extends State<ActivationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F7FD),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const RegisterHeader(title: 'Aktivasi Akun'),
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
                              icon: Icons.person_outline_rounded,
                              title: 'Informasi Akun',
                              description:
                                  'Masukkan informasi mengenai akun mobile banking Sephora Anda',
                            ),
                            SizedBox(height: 20),
                            Divider(color: Color(0xFFE9F0FF)),
                            SizedBox(height: 10),
                            RegisterFormField(hintText: 'No. Rekening'),
                            RegisterFormField(
                              hintText: 'ID Pengguna',
                              helperText:
                                  'Berisi Alphanumeric sejumlah 10-30 karakter.',
                            ),
                            RegisterFormField(
                              hintText: 'Kata Sandi',
                              suffixIcon: Icons.visibility_off_outlined,
                              helperText:
                                  'Berisi Alphanumeric sejumlah 8-10 karakter.',
                            ),
                            RegisterFormField(
                              hintText: 'Konfirmasi Kata Sandi',
                              suffixIcon: Icons.visibility_off_outlined,
                            ),
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
              onPressed: () {},
              text: 'Selanjutnya',
            )
          ],
        ),
      ),
    );
  }
}
