import 'package:equatable/equatable.dart';
import 'package:simple_ecommarce_bloc/data/product/product_model.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/admin/new_product/models/text_field_new_product_model.dart';

abstract class ProductEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AddProduct extends ProductEvent {
  final List<TextFieldNewProductModel> controllers;
  final List<String> images;

  AddProduct({required this.controllers, required this.images});
  @override
  List<Object?> get props => [controllers, images];
}

class SellingProduct extends ProductEvent {
  final ProductModel product;
  final int amount;

  SellingProduct({required this.product, required this.amount});
}

class RemoveProduct extends ProductEvent {
  final ProductModel product;

  RemoveProduct({required this.product});
}
