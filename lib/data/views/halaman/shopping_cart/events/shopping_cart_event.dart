import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:simple_ecommarce_bloc/data/product/product_model.dart';

abstract class ShoppingCartEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AddShoppingCartEvent extends ShoppingCartEvent {
  final ProductModel product;
  final BuildContext context;

  AddShoppingCartEvent({required this.product, required this.context});
}

class ToggleSelectedShoppingCart extends ShoppingCartEvent {
  final ProductModel product;
  final bool selected;

  ToggleSelectedShoppingCart({required this.product, required this.selected});
}

class TotalSellingPrice extends ShoppingCartEvent {}

class SellingShoppingCart extends ShoppingCartEvent {
  final BuildContext context;

  SellingShoppingCart({required this.context});
}

class RemoveShoppingCart extends ShoppingCartEvent {
  final ProductModel product;

  RemoveShoppingCart({required this.product});
}
