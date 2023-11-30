import 'package:flutter/material.dart';

class SignInIcon extends StatelessWidget {
  const SignInIcon({super.key, required this.icon, required this.color});
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Icon(
          icon
          ,
          color: Colors.white, // Set the color directly within the Icon widget
        ),
      ),
    );
  }
}
