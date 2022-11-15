import 'package:flutter/material.dart';

class OnBoardingCarousel extends StatelessWidget {
  final Function(int) onChanged;

  const OnBoardingCarousel({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 240,
      child: PageView(
        onPageChanged: (currentPage) {
          onChanged(currentPage);
        },
        children: [
          Container(
            width: 240,
            height: 240,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_1.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            width: 240,
            height: 240,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_2.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            width: 240,
            height: 240,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_3.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
