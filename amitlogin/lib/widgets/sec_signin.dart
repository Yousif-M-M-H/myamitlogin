import 'package:flutter/material.dart';

class SecSignIn extends StatelessWidget {
  const SecSignIn({
    super.key,
    required this.text,
    required this.mycolor,
    required this.textcolor,
    this.borderRadius = 3.0, // Default border radius value
  });
  final String text;
  final Color mycolor;
  final Color textcolor;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(mycolor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: textcolor),
        ),
      ),
    );
  }
}
