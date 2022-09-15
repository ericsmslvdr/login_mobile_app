import 'package:flutter/material.dart';
import 'package:login_mobile_app/pages/done_register.dart';
import 'package:login_mobile_app/pages/login_page.dart';
import 'package:login_mobile_app/widgets/custom_textfield.dart';
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
              'images/REDT.png',
              height: 190,
            ),
            CustomTextField(hintText: 'Full Name'),
            CustomTextField(hintText: 'Email'),
            CustomTextField(hintText: 'Phone Number'),
            CustomTextField(
              hintText: 'Password',
              sufficIcon: Icons.remove_red_eye_outlined,
            ),
            CustomTextField(
              hintText: 'Confirm Password',
              sufficIcon: Icons.remove_red_eye_outlined,
            ),
            const SizedBox(height: 30),
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
