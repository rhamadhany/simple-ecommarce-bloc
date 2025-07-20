import 'package:flutter/material.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/admin/new_product/models/text_field_new_product_model.dart';

enum FieldNewProduct {
  productName,
  stock,
  purchasePrice,
  sellingPrice,
  description,
}

class TextFieldNewProduct {
  static final List<TextFieldNewProductModel> controllers = [
    TextFieldNewProductModel(
      label: 'Product Name',
      field: FieldNewProduct.productName,
    ),
    TextFieldNewProductModel(
      label: 'Stock',
      keyboardType: TextInputType.number,
      field: FieldNewProduct.stock,
    ),
    TextFieldNewProductModel(
      label: 'Purchase Price',
      keyboardType: TextInputType.number,
      prefixText: 'Rp ',
      field: FieldNewProduct.purchasePrice,
    ),
    TextFieldNewProductModel(
      label: 'Selling Price',
      keyboardType: TextInputType.number,
      prefixText: 'Rp ',
      field: FieldNewProduct.sellingPrice,
    ),
    TextFieldNewProductModel(
      label: 'Description',
      field: FieldNewProduct.description,
      keyboardType: TextInputType.multiline,
    ),
  ];

  static resetController() {
    for (int i = 0; i < controllers.length; i++) {
      controllers[i].controller.clear();
    }
  }
}
