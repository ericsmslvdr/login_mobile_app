import 'package:flutter/material.dart';
import 'package:login_mobile_app/pages/login_page.dart';
import 'package:login_mobile_app/pages/register_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                const SizedBox(height: 95),
                Image.asset(
                  'images/bike_only.png',
                ),
                const SizedBox(height: 40),
                const Text(
                  'Easy to Transact,\nwith NUBShop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Buy NUB Merchandise according to your\n interests and with best negotiated price',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text('Login'),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.blue),
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RegisterPage(),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
