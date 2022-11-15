import 'package:flutter/material.dart';

class RegisterFormField extends StatelessWidget {
  final String hintText;
  final IconData? suffixIcon;
  final String? helperText;
  const RegisterFormField(
      {super.key, required this.hintText, this.suffixIcon, this.helperText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0XFFF3F7FD),
          suffixIcon: Icon(
            suffixIcon,
            color: const Color(0xFF2F82FF),
            size: 15,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
          helperText: helperText,
          helperStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 10,
            color: Color(0xFFBCC8E7),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
