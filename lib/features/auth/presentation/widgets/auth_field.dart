import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isObsecure;
  const AuthField(
      {super.key,
      required this.hintText,
      required this.controller,
      this.isObsecure = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: false,
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return "$hintText is required";
        }
        return null;
      },
      decoration: InputDecoration(hintText: hintText),
    );
  }
}
