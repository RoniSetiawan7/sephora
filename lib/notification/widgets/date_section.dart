import 'package:flutter/material.dart';

class DateSection extends StatelessWidget {
  final String date;
  const DateSection({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Text(
      date,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: Color(0XFF727FA3),
      ),
    );
  }
}
