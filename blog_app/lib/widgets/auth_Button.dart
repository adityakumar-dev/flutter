import 'package:blog_app/core/theme/app_pallate.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  const AuthGradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors:[AppPallete.gradient1,AppPallete.gradient2])
      ),
      child: ElevatedButton(onPressed: () {}, 
      style: ElevatedButton.styleFrom(
        backgroundColor: AppPallete.transparentColor,
        shadowColor: AppPallete.transparentColor,
        fixedSize: Size(355, 55)
      ),
      child: Text("Sign Up")),
    );
  }
}
