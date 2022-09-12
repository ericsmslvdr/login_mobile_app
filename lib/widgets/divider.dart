import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  final String text;

  const DividerWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        Row(
          children: [
            const Expanded(
                child: Divider(
              color: Colors.black87,
            )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(text),
            ),
            const Expanded(
                child: Divider(
              color: Colors.black87,
            )),
          ],
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
