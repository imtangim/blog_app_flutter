import 'package:blog_app/core/theme/app_pallet.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  final String title;
  const AuthGradientButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        gradient: const LinearGradient(
          colors: [
            AppPallete.gradient1,
            AppPallete.gradient2,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppPallete.transparentColor,
          fixedSize: Size(MediaQuery.of(context).size.width, 55),
          shadowColor: AppPallete.transparentColor,
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
