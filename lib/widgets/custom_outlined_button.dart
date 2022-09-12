import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final Color color;
  final String text;
  final String image;
  double paddingLeft = 0;
  double paddingRight = 0;
  bool? withIcon = false;
  VoidCallback? onPressed;

  CustomOutlinedButton({
    super.key,
    required this.color,
    required this.text,
    this.withIcon,
    this.onPressed,
    required this.image,
    required this.paddingLeft,
    required this.paddingRight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(width: 2, color: color),
        ),
        onPressed: () {
          onPressed;
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: paddingLeft,
                right: paddingRight,
              ),
              child: Image.asset(image),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                text,
                style: TextStyle(color: color),
              ),
            ),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
