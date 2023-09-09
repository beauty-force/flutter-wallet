import 'package:flutter/material.dart';

import '../../utils/theme.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final bool obscureText;
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? keyboardType;

  const CustomTextField({
    Key? key,
    required this.title,
    this.obscureText = false,
    this.controller,
    this.hintText,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          obscureText: obscureText,
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: const Color.fromARGB(255, 240, 240, 240),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            contentPadding: const EdgeInsets.all(12),
          ),
        ),
      ],
    );
  }
}
