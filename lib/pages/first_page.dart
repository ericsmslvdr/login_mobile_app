import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.white10,
              height: 200,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/bike.png',
                      scale: 1.1,
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      'Easy to Transact,\nwith Jumot',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'The buying and selling business reaches all\n regions in Indonesia',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
          Container(
            // height: 50,
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 25,
              ),
              child: Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
    );
  }
}
