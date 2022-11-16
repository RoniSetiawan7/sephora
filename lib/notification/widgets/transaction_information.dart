import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionInformation extends StatelessWidget {
  final String title;
  final String time;
  final String imagePath;
  final String user;
  final int amount;
  final TransactionType type;
  final bool isRead;

  const TransactionInformation({
    super.key,
    required this.title,
    required this.time,
    required this.imagePath,
    required this.user,
    required this.amount,
    required this.type,
    this.isRead = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color(0XFF2B2F3C),
                  ),
                ),
                const SizedBox(width: 2),
                Builder(
                  builder: (context) {
                    late Color iconColor;
                    late IconData icon;

                    if (type == TransactionType.masuk) {
                      iconColor = const Color(0XFF6DD13E);
                      icon = Icons.south_east;
                    } else {
                      iconColor = const Color(0XFFE32D2D);
                      icon = Icons.north_east;
                    }
                    return Icon(
                      icon,
                      size: 14,
                      color: iconColor,
                    );
                  },
                ),
                const Spacer(),
                Text(
                  time,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFF97A5C9),
                  ),
                ),
                const SizedBox(width: 5),
                Builder(
                  builder: ((context) {
                    if (isRead) {
                      return const SizedBox();
                    }
                    return Container(
                      width: 6,
                      height: 6,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0XFFE32D2D),
                      ),
                    );
                  }),
                )
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xFFF3F7FD),
                      ),
                    ),
                    Image.asset(
                      imagePath,
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xFF97A5C9),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Rp ${NumberFormat('#,###', 'id_ID').format(amount)}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFF2B2F3C),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

enum TransactionType {
  masuk,
  keluar,
}
