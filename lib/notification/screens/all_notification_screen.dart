import 'package:flutter/material.dart';
import 'package:sephora/notification/widgets/choice_chips.dart';
import 'package:sephora/notification/widgets/date_section.dart';
import 'package:sephora/notification/widgets/promo.dart';
import 'package:sephora/notification/widgets/transaction_information.dart';
import 'package:sephora/register/widgets/register_header.dart';

class AllNotificationScreen extends StatefulWidget {
  const AllNotificationScreen({Key? key}) : super(key: key);

  @override
  State<AllNotificationScreen> createState() => _AllNotificationScreenState();
}

class _AllNotificationScreenState extends State<AllNotificationScreen> {
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
                      TransactionInformation(
                        title: 'Transfer Keluar',
                        time: '14 : 30',
                        imagePath: 'assets/bri_logo.png',
                        user: 'Ahmad Alfiansyah - 4434 5384 3478',
                        amount: 150000000,
                        type: TransactionType.keluar,
                        isRead: true,
                      ),
                      SizedBox(height: 15),
                      Promo(
                        time: '14 : 30',
                        imagPath: 'assets/promo.png',
                        description: 'Promo Cashback Belanja Pulsa Dengan OVO',
                      ),
                      SizedBox(height: 25),
                      DateSection(date: '11 Januari 2022'),
                      SizedBox(height: 10),
                      TransactionInformation(
                        title: 'Transfer Masuk',
                        time: '14 : 30',
                        imagePath: 'assets/bri_logo.png',
                        user: 'Ahmad Alfiansyah - 4434 5384 3478',
                        amount: 150000000,
                        type: TransactionType.masuk,
                        isRead: true,
                      ),
                      SizedBox(height: 15),
                      TransactionInformation(
                        title: 'Pembelian',
                        time: '14 : 30',
                        imagePath: 'assets/jenius_logo.png',
                        user: 'Pulsa Telkomsel - 0827373737',
                        amount: 150000000,
                        type: TransactionType.keluar,
                        isRead: true,
                      ),
                      SizedBox(height: 15),
                      TransactionInformation(
                        title: 'Pembayaran',
                        time: '14 : 30',
                        imagePath: 'assets/mandiri_logo.png',
                        user: 'Ahmad Alfiansyah - 4434 5384 3478',
                        amount: 150000000,
                        type: TransactionType.keluar,
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
