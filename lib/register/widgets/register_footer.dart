import 'package:flutter/material.dart';

class RegisterFooter extends StatelessWidget {
  final Function onPressed;
  final String text;
  const RegisterFooter(
      {super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 120,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 22),
            height: 40,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                onPressed();
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
