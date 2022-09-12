import 'package:flutter/material.dart';
import 'package:login_mobile_app/widgets/content.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Content(
      imgPath: 'images/bike.png',
      title: 'Easy to Transact,\nwith NUBShop',
      subTitle:
          'The buying and selling NUB merchandise reaches all\n regions in Philippines',
      icon: Icons.swipe_right_outlined,
    );
  }
}
