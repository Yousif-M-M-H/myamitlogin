import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({Key? key, required this.icon, required this.title}) : super(key: key);

  final Widget icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: title,
        filled: true, 
        fillColor: Colors.grey[300],
        prefixIcon: icon,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none, 
        ),
      ),
    );
  }
}
