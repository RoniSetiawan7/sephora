import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  final String title;
  final Function? onSeeAll;
  const HomeSection({
    Key? key,
    required this.title,
    this.onSeeAll,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color(0xFF2B2F3C),
          ),
        ),
        Builder(
          builder: (context) {
            if (onSeeAll == null) {
              return const SizedBox();
            }
            return const Text(
              'Lihat Semua',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color(0xFF2F82FF),
              ),
            );
          },
        )
      ],
    );
  }
}
