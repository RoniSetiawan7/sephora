import 'package:flutter/material.dart';

class OnBoardingIndicator extends StatelessWidget {
  final int currentPage;

  const OnBoardingIndicator({super.key, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OnBoardingIndicatorItem(active: currentPage == 0),
        OnBoardingIndicatorItem(active: currentPage == 1),
        OnBoardingIndicatorItem(active: currentPage == 2),
      ],
    );
  }
}

class OnBoardingIndicatorItem extends StatelessWidget {
  final bool active;

  const OnBoardingIndicatorItem({super.key, this.active = false});

  @override
  Widget build(BuildContext context) {
    if (active) {
      return Container(
        width: 30,
        height: 8,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
      );
    }
    return Container(
      width: 8,
      height: 8,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: const BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
