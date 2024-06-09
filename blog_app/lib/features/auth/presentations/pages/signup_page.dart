// ignore_for_file: non_constant_identifier_names

import 'package:blog_app/core/theme/app_pallate.dart';
import 'package:blog_app/features/auth/presentations/pages/signin_page.dart';
import 'package:blog_app/widgets/auth_Button.dart';
import 'package:blog_app/widgets/auth_field.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
   static route () =>MaterialPageRoute(builder: (context)=> const SignUp());
  const SignUp({super.key});
  
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
   final  formKey = GlobalKey<FormState>();
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();
  final NameController = TextEditingController();
  @override
  void dispose() {
    EmailController.dispose();
    PasswordController.dispose();
    NameController.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(),
        body: Padding(
       
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView
          (
            reverse: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const Text(
                  'Sign Up.',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                 AuthField(
                  hintText: 'Name',
                  controller: NameController,  
                ),
              const  SizedBox(
                  height: 15,
                ),
               AuthField(
                  hintText: 'Email',
                controller: EmailController,
                ),
               const SizedBox(
                  height: 15,
                ),
                AuthField(
                  hintText: 'Password',
                  isObsecureText: true,
                  controller: PasswordController,
                ),
               const SizedBox(
                  height: 20,
                ),
               const AuthGradientButton(btnText: "Sign Up"),
               const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: ()=>{
                    
                    Navigator.pushAndRemoveUntil(context, SignIn.route(),(route)=>false)},
                  child: RichText(
                      text: TextSpan(
                          text: "already Have an account? ",
                          style: Theme.of(context).textTheme.titleMedium,
                          children: [
                        TextSpan(
                            text: "Sign In",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(color: AppPallete.gradient2 , fontWeight: FontWeight.bold))
                      ])),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
