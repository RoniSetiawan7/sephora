import 'package:flutter/material.dart';

class ChoiceChips extends StatelessWidget {
  const ChoiceChips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ChoiceChipsItem(text: 'Semua', selected: true),
            ChoiceChipsItem(text: 'Info & Promo'),
            ChoiceChipsItem(text: 'Transaksi'),
            ChoiceChipsItem(text: 'Split Bill'),
            ChoiceChipsItem(text: 'Kemanan')
          ],
        ),
      ),
    );
  }
}

class ChoiceChipsItem extends StatelessWidget {
  final String text;
  final bool selected;

  const ChoiceChipsItem({
    Key? key,
    required this.text,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (selected) {
      return Container(
        margin: const EdgeInsets.only(right: 5),
        child: Chip(
          label: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color(0XFF2F82FF),
        ),
      );
    }
    return Container(
      margin: const EdgeInsets.only(right: 5),
      child: Chip(
        label: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Color(0XFF2F82FF),
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
