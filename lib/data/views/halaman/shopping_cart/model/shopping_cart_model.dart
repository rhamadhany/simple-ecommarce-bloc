import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_ecommarce_bloc/data/product/product_model.dart';

part 'shopping_cart_model.freezed.dart';
part 'shopping_cart_model.g.dart';

@freezed
abstract class ShoppingCartModel with _$ShoppingCartModel {
  factory ShoppingCartModel({
    required ProductModel product,
    required int amount,
    @Default(false) bool selected,
  }) = _ShoppingCartModel;

  factory ShoppingCartModel.fromJson(Map<String, dynamic> json) =>
      _$ShoppingCartModelFromJson(json);
}
