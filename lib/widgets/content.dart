import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  final String imgPath;
  final String title;
  final String subTitle;
  final IconData icon;

  const Content({
    Key? key,
    required this.imgPath,
    required this.title,
    required this.subTitle,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            children: [
              const SizedBox(height: 95),
              Image.asset(
                imgPath,
              ),
              const SizedBox(height: 40),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                subTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 25,
            ),
            child: Icon(icon),
          ),
        ),
      ],
    );
  }
}
