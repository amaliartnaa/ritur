// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;

  CustomButton({required this.text, required this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 228,
      height: 60,
      padding: const EdgeInsets.only(top: 0),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Center(
          child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
        )
      ),
    );
  }
}
