import 'package:flutter/material.dart';
import 'package:login_mobile_app/widgets/content.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Content(
      imgPath: 'images/deal.png',
      title: 'Easy to Transact,\nwith Jumot',
      subTitle:
          'Buying and selling can be done by COD so you can\n check the items you are going to buy',
      icon: Icons.swipe_outlined,
    );
  }
}
