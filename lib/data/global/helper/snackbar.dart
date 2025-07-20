import 'package:flutter/material.dart';

void showSnackBar({required BuildContext context, required String content}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        content,
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),

      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.deepPurple,
      padding: EdgeInsetsGeometry.all(16),
      margin: EdgeInsets.all(8),
    ),
  );
}
