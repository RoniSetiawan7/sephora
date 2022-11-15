import 'package:flutter/material.dart';

class RegisterDescription extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  const RegisterDescription({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: const Color(0xFFDAE9FF),
          ),
          child: SizedBox(
            height: 16,
            width: 11,
            child: Icon(icon),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xFF2B2F3C),
                ),
              ),
              const SizedBox(height: 2),
              Text(
                description,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xFF727FA3),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
