import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  MyTextfield({
    super.key,
    this.hintText,
    this.textInputType,
    this.onChanged,
    this.obscureText = false,
    this.color = Colors.blue,
    this.fillColor = Colors.white,
    this.controller,
    this.hintColor = Colors.white,
  });
  String? hintText;
  TextInputType? textInputType;
  Function(String)? onChanged;

  bool obscureText;
  TextEditingController? controller;
  Color color;
  Color fillColor;
  Color hintColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
        obscureText: obscureText,
        onChanged: onChanged,
        keyboardType: textInputType,
        decoration: InputDecoration(
          fillColor: fillColor,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: color),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: color),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: color,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: hintColor),
        ));
  }
}
