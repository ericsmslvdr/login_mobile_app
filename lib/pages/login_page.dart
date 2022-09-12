import 'package:flutter/material.dart';
import 'package:login_mobile_app/pages/register_page.dart';
import 'package:login_mobile_app/widgets/footer.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        color: Colors.white,
        child: ListView(
          children: [
            const SizedBox(height: 95),
            Image.asset(
              'images/deal_2.png',
            ),
            const SizedBox(height: 30),
            const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 15),
                border: OutlineInputBorder(),
                hintText: 'Email',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              smartDashesType: SmartDashesType.disabled,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 15),
                border: OutlineInputBorder(),
                hintText: 'Password',
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text('Forgot Password?'),
              ],
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text('Login'),
                ),
              ),
            ),
            const Footer(
              dividerText: 'Or Login using',
              text: 'Don\'t have an account yet? ',
              blueText: 'Register now',
              page: RegisterPage(),
            ),
          ],
        ),
      ),
    );
  }
}
