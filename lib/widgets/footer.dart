import 'package:flutter/material.dart';
import 'package:login_mobile_app/widgets/custom_outlined_button.dart';
import 'package:login_mobile_app/widgets/divider.dart';

class Footer extends StatelessWidget {
  final String dividerText;
  final String text;
  final String blueText;
  final page;

  const Footer({
    super.key,
    required this.text,
    required this.dividerText,
    required this.blueText,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DividerWidget(text: dividerText),
        CustomOutlinedButton(
          color: Colors.red,
          text: 'Google',
          image: 'images/google.png',
          paddingLeft: 0,
          paddingRight: 0,
        ),
        const SizedBox(height: 25),
        CustomOutlinedButton(
          color: Colors.blue,
          text: 'Facebook',
          image: 'images/facebook.png',
          paddingLeft: 8,
          paddingRight: 10,
        ),
        const SizedBox(height: 25),
        Center(
          child: GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            ),
            child: RichText(
              text: TextSpan(
                text: text,
                style: DefaultTextStyle.of(context).style,
                children: [
                  TextSpan(
                    text: blueText,
                    style: const TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 25),
      ],
    );
  }
}
