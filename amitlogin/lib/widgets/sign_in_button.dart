import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    Key? key,
    required this.text,
    required this.mycolor,
    required this.textcolor,
    this.borderRadius = 10.0, // Default border radius value
  }) : super(key: key);

  final String text;
  final Color mycolor;
  final Color textcolor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
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
