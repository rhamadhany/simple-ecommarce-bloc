// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShoppingCartModel _$ShoppingCartModelFromJson(Map<String, dynamic> json) =>
    _ShoppingCartModel(
      product: ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      amount: (json['amount'] as num).toInt(),
      selected: json['selected'] as bool? ?? false,
    );

Map<String, dynamic> _$ShoppingCartModelToJson(_ShoppingCartModel instance) =>
    <String, dynamic>{
      'product': instance.product,
      'amount': instance.amount,
      'selected': instance.selected,
    };
