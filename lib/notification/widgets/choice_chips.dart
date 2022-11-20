import 'package:flutter/material.dart';

class ChoiceChips extends StatelessWidget {
  final String text;
  final bool selected;
  final VoidCallback? onTap;

  const ChoiceChips({
    Key? key,
    required this.text,
    this.selected = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      child: GestureDetector(
        onTap: onTap,
        child: Chip(
          label: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: selected ? Colors.white : const Color(0XFF2F82FF),
            ),
          ),
          backgroundColor: selected ? const Color(0XFF2F82FF) : Colors.white,
        ),
      ),
    );
  }
}
