import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'home_section.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeSection(
          title: 'Lihat Semua',
          onSeeAll: () {},
        ),
        const SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              AddFavoriteItem(),
              FavoriteItemList(
                imagePath: 'assets/mandiri_logo.png',
                label: 'Ahmad Wahyudi',
              ),
              FavoriteItemList(
                imagePath: 'assets/bri_logo.png',
                label: 'Wahyu Haryanto',
              ),
              FavoriteItemList(
                imagePath: 'assets/jenius_logo.png',
                label: 'Guz Azmy Askandar',
              )
            ],
          ),
        )
      ],
    );
  }
}

class AddFavoriteItem extends StatelessWidget {
  const AddFavoriteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 24),
      child: Column(
        children: [
          DottedBorder(
            dashPattern: const [10],
            borderType: BorderType.RRect,
            color: Colors.blue,
            radius: const Radius.circular(60),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Container(
                width: 60,
                height: 60,
                color: Colors.white,
                child: const Icon(
                  Icons.add,
                  color: Color(0xFF2F82FF),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Tambah',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xFF2B2F3C),
            ),
          )
        ],
      ),
    );
  }
}

class FavoriteItemList extends StatelessWidget {
  final String imagePath;
  final String label;
  const FavoriteItemList({
    super.key,
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 24),
      child: Column(
        children: [
          Container(
            width: 65,
            height: 65,
            padding: const EdgeInsets.all(7),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Image.asset(imagePath),
          ),
          const SizedBox(height: 8),
          Builder(
            builder: (context) {
              final labelLength = label.length;
              const idealCharacter = 8;
              const dotted = '...';
              if (labelLength > idealCharacter) {
                var maxLabel = label.substring(0, idealCharacter);
                return Text(
                  '$maxLabel$dotted',
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                );
              }
              return Text(
                label,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
