import 'package:flutter/material.dart';
import 'package:sephora/notification/widgets/date_section.dart';
import 'package:sephora/notification/widgets/transaction_information.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          DateSection(date: '12 Januari 2022'),
          SizedBox(height: 10),
          TransactionInformation(
            title: 'Transfer Keluar',
            time: '14 : 30',
            imagePath: 'assets/bri_logo.png',
            user: 'Ahmad Alfiansyah - 4434 5384 3478',
            amount: 150000000,
            type: TransactionType.keluar,
          ),
          SizedBox(height: 15),
          TransactionInformation(
            title: 'Transfer Masuk',
            time: '14 : 30',
            imagePath: 'assets/bri_logo.png',
            user: 'Ahmad Alfiansyah - 4434 5384 3478',
            amount: 150000000,
            type: TransactionType.masuk,
            isRead: true,
          ),
          SizedBox(height: 25),
          DateSection(date: '11 Januari 2022'),
          SizedBox(height: 10),
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
            title: 'Transfer Masuk',
            time: '14 : 30',
            imagePath: 'assets/jenius_logo.png',
            user: 'Ahmad Alfiansyah - 4434 5384 3478',
            amount: 150000,
            type: TransactionType.masuk,
          ),
          SizedBox(height: 15),
          TransactionInformation(
            title: 'Pembayaran',
            time: '14 : 30',
            imagePath: 'assets/mandiri_logo.png',
            user: 'Kartu Kredit - 4434 5384 3478',
            amount: 150000,
            type: TransactionType.keluar,
            isRead: true,
          ),
          SizedBox(height: 25)
        ],
      ),
    );
  }
}
