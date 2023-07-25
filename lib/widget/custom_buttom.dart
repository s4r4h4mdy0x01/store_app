import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.text, this.onTap});
  String text;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
         gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.orange[200]!,
               
                Colors.green[300]!,
                 Colors.blue[200]!,
                 Colors.red[300]!,
                
              ],
            ),
           
          borderRadius: BorderRadius.circular(8),
        ),
        height: 50,
        width: double.infinity,
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
