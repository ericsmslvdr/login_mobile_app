import 'package:flutter/material.dart';

import 'first_page.dart';
import 'second_page.dart';
import 'third_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(children: const [
            FirstPage(),
            SecondPage(),
            ThirdPage(),
          ]),
        ],
      ),
    );
  }
}
