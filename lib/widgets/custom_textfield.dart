import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  IconData? sufficIcon;

  CustomTextField({
    super.key,
    required this.hintText,
    this.sufficIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 15),
            border: const OutlineInputBorder(),
            hintText: hintText,
            suffixIcon: Icon(sufficIcon),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
