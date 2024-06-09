import 'package:blog_app/widgets/auth_Button.dart';
import 'package:blog_app/widgets/auth_field.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign Up.',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30,),
            AuthField(
              hintText: 'Name',
            ),
            SizedBox(height: 15,),
            AuthField(
              hintText: 'Email',
            ),
            SizedBox(height: 15,),
            AuthField(
              hintText: 'Password',
            ),
            SizedBox(height: 20,)
            , AuthGradientButton()
          ],
        ),
      ),
    );
  }
}
