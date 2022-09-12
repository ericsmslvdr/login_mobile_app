import 'package:flutter/material.dart';
import 'package:login_mobile_app/pages/done_register.dart';
import 'package:login_mobile_app/pages/login_page.dart';
import 'package:login_mobile_app/widgets/footer.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: ListView(
          children: [
            Image.asset(
              'images/girl_in_bike.png',
            ),
            const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 15),
                border: OutlineInputBorder(),
                hintText: 'Full Name',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 15),
                border: OutlineInputBorder(),
                hintText: 'Email',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 15),
                border: OutlineInputBorder(),
                hintText: 'Phone Number',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 15),
                border: OutlineInputBorder(),
                hintText: 'Password',
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              smartDashesType: SmartDashesType.disabled,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 15),
                border: OutlineInputBorder(),
                hintText: 'Confirm Password',
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DoneRegister(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text('Register'),
                ),
              ),
            ),
            const Footer(
              dividerText: 'Or Register using',
              text: 'Already have an account? Please ',
              blueText: 'Login',
              page: LoginPage(),
            )
          ],
        ),
      ),
    );
  }
}
