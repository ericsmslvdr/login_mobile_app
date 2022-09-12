import 'package:flutter/material.dart';
import 'package:login_mobile_app/pages/login_page.dart';

class DoneRegister extends StatelessWidget {
  const DoneRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  const SizedBox(height: 95),
                  Image.asset(
                    'images/done_register.png',
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Congratulations!\n You have successfully registered',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Please check your email for\n verification before login.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text('Login'),
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
