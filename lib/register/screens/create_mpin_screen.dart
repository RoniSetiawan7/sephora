import 'package:flutter/material.dart';
import 'package:sephora/register/widgets/register_desctiption.dart';
import 'package:sephora/register/widgets/register_footer.dart';
import 'package:sephora/register/widgets/register_form_field.dart';
import 'package:sephora/register/widgets/register_header.dart';

import 'term_and_condition_screen.dart';

class CreateMpinScreen extends StatefulWidget {
  const CreateMpinScreen({super.key});

  @override
  State<CreateMpinScreen> createState() => _CreateMpinScreenState();
}

class _CreateMpinScreenState extends State<CreateMpinScreen> {
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
                      child: Column(
                        children: const [
                          RegisterDescription(
                            icon: Icons.lock_outline,
                            title: 'Informasi MPIN',
                            description:
                                'Masukkan informasi mengenai MPIN akun mobile banking Sephora Anda',
                          ),
                          SizedBox(height: 20),
                          Divider(color: Color(0xFFE9F0FF)),
                          SizedBox(height: 10),
                          RegisterFormField(
                            hintText: 'MPIN',
                            suffixIcon: Icons.visibility_off_outlined,
                            helperText:
                                'Berisi Alphanumeric sejumlah 6 karakter.',
                          ),
                          RegisterFormField(
                            hintText: 'Konfirmasi MPIN',
                            suffixIcon: Icons.visibility_off_outlined,
                          ),
                        ],
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
                    builder: (context) => const TermAndConditionScreen(),
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
