import 'package:flutter/material.dart';
import 'package:sephora/notification/widgets/choice_chips.dart';
import 'package:sephora/notification/widgets/date_section.dart';
import 'package:sephora/notification/widgets/security.dart';
import 'package:sephora/register/widgets/register_header.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({Key? key}) : super(key: key);

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F7FD),
        body: Column(
          children: [
            const RegisterHeader(title: 'Notifikasi'),
            const SizedBox(height: 20),
            const ChoiceChips(),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 20),
                      DateSection(date: '12 Januari 2022'),
                      SizedBox(height: 10),
                      Security(
                        time: '14 : 30',
                        title: 'Transaksi Anomali',
                        description:
                            'Kami mendeteksi adanya transaksi anomali pada akun Anda di jam 17:00 WIB sebesar...',
                        isRead: true,
                      ),
                      SizedBox(height: 15),
                      Security(
                        time: '14 : 30',
                        title: 'Login Terdeteksi',
                        description:
                            'Kami mendeteksi adanya upaya login pada akun Anda di jam 17:00 WIB',
                        isRead: true,
                      ),
                      SizedBox(height: 25)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
