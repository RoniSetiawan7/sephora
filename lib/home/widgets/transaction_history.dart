import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'home_section.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeSection(
          title: 'Riwayat Transaksi',
          onSeeAll: () {},
        ),
        const SizedBox(height: 15),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 24),
            child: Column(
              children: const [
                TransactionHistoryItem(
                  imagePath: 'assets/ewallet.png',
                  title: 'Top Up E-Wallet',
                  description: 'Gopay - 08123123123',
                  amount: 14000000,
                  type: TransactionType.keluar,
                ),
                TransactionHistoryItem(
                  imagePath: 'assets/transfer_masuk.png',
                  title: 'Transfer Masuk',
                  description: 'BRI - 3453 3434 3435',
                  amount: 130000000,
                  type: TransactionType.masuk,
                ),
                TransactionHistoryItem(
                  imagePath: 'assets/pembelian.png',
                  title: 'Pembelian',
                  description: 'Telkomsel - 08123123123',
                  amount: 14000000,
                  type: TransactionType.keluar,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class TransactionHistoryItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final int amount;
  final TransactionType type;
  const TransactionHistoryItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.amount,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 32,
            height: 32,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color(0xFF2B2F3C),
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFF7B87AF),
                  ),
                ),
              ],
            ),
          ),
          Builder(
            builder: ((context) {
              late Color textColor;
              final numberFormat = NumberFormat('#,###', 'id_ID');

              if (type == TransactionType.masuk) {
                textColor = const Color(0xFF6DD13E);
              } else {
                textColor = const Color(0xFFE32D2D);
              }
              return Text(
                'Rp ${numberFormat.format(amount)}',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: textColor,
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}

enum TransactionType {
  masuk,
  keluar,
}
