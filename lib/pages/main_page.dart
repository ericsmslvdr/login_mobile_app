import 'package:flutter/material.dart';
import 'package:login_mobile_app/pages/first_page.dart';
import 'package:login_mobile_app/pages/second_page.dart';
import 'package:login_mobile_app/pages/third_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: const [
              FirstPage(),
              SecondPage(),
              ThirdPage(),
            ],
          ),
        ],
      ),
    );
  }
}
