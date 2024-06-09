import 'package:blog_app/features/auth/presentations/pages/signup_page.dart';
import 'package:blog_app/widgets/auth_Button.dart';
import 'package:blog_app/widgets/auth_field.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_pallate.dart';

class SignIn extends StatefulWidget {
  static route ()=>MaterialPageRoute(builder: (context)=> const SignIn());
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Scaffold(
          appBar: AppBar(),
          resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Sign In",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            AuthField(
              hintText: "Email",
              controller: EmailController,
            ),
            const SizedBox(
              height: 20,
            ),
            AuthField(
              hintText: "Password",
              controller: PasswordController,
              isObsecureText: true,
            ),
            const SizedBox(height: 20,),
            const AuthGradientButton(btnText: 'Sign In',),
            const SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                   Navigator.pushAndRemoveUntil(context, SignUp.route(),(route)=>false);
                },
                child: RichText(
                    text: TextSpan(
                        text: "Don't Have an account? ",
                        style: Theme.of(context).textTheme.titleMedium,
                        children: [
                      TextSpan(
                          text: "Sign Up",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: AppPallete.gradient2 , fontWeight: FontWeight.bold))
                    ])),
              ),
          ],
        ),
      ),
    ));
  }
}
