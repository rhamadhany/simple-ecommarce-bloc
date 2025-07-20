import 'package:flutter/material.dart';

class TextFieldAddProduct extends StatelessWidget {
  const TextFieldAddProduct({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.label,
    this.prefixText,
  });
  final TextEditingController controller;

  final TextInputType keyboardType;
  final String label;
  final String? prefixText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(labelText: label, prefixText: prefixText),
    );
  }
}
