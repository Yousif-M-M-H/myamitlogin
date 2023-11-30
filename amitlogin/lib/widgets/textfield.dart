import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key, required this.icon, required this.title});
  final   Widget icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextField(
  decoration: InputDecoration(
    labelText:title,
      filled: true, // Set to true to fill the background
    fillColor: Color(0xfF0F0F0), 
    prefixIcon: icon, 
    border: OutlineInputBorder( 
     borderSide: BorderSide(
      color: Color(0XFF0F0F0)
     )
    ),
  ),
);
  }
}