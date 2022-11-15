import 'package:flutter/material.dart';

class OtpCircle extends StatefulWidget {
  final String otpValue;
  final int otpLength;

  const OtpCircle({
    Key? key,
    required this.otpValue,
    this.otpLength = 6,
  }) : super(key: key);

  @override
  State<OtpCircle> createState() => _OtpCircleState();
}

class _OtpCircleState extends State<OtpCircle> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.otpLength, (index) => index + 1).map((e) {
        return OtpCircleItem(isFilled: e <= widget.otpValue.length);
      }).toList(),
    );
  }
}

class OtpCircleItem extends StatelessWidget {
  final bool isFilled;
  const OtpCircleItem({Key? key, this.isFilled = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isFilled) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 13),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 22,
              height: 22,
              decoration: const BoxDecoration(
                color: Color(0xFFDAE9FF),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              width: 15.71,
              height: 15.71,
              decoration: const BoxDecoration(
                color: Color(0xFF2F82FF),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      );
    }
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 13),
      width: 15.71,
      height: 15.71,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: const Color(0xFF97A5C9),
        ),
      ),
    );
  }
}
