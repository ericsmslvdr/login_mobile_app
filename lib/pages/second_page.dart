import 'package:flutter/material.dart';
import 'package:login_mobile_app/widgets/content.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Content(
      imgPath: 'images/deal.png',
      title: 'Easy to Transact,\nwith NUBShop',
      subTitle:
          'Buying and paying can be done through Cash on Delivery,\n e-Wallet, Over-the-Counter, or any other mode of payment\n you prefer. Your convenience is our priority',
      icon: Icons.swipe_outlined,
    );
  }
}
