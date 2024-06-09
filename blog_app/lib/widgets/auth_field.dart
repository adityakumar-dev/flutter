import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final isObsecureText;
  final String hintText;
  final controller ;
  const AuthField({super.key,  required this.hintText,this.isObsecureText = false, required this.controller});
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText
      ),
      obscureText: isObsecureText,
      validator: (value){
        if(value!.isEmpty){
          return "$hintText is missing";
        }else {
          return null;
        }
      },
    );
  }
}