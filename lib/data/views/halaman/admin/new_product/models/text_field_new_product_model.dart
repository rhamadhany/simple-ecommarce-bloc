import 'package:flutter/material.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/admin/new_product/abstract/text_field_new_product.dart';

class TextFieldNewProductModel {
  final TextEditingController controller;
  final String label;
  final TextInputType keyboardType;
  final String? prefixText;
  final FieldNewProduct field;

  TextFieldNewProductModel({
    TextEditingController? controller,
    TextInputType? keyboardType,
    required this.label,
    this.prefixText,
    required this.field,
  }) : controller = controller ?? TextEditingController(),
       keyboardType = keyboardType ?? TextInputType.text;
}
