// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shoping_cart_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShoppingCartState _$ShoppingCartStateFromJson(Map<String, dynamic> json) =>
    _ShoppingCartState(
      listProduct: (json['listProduct'] as List<dynamic>)
          .map((e) => ShoppingCartModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPrice: (json['totalPrice'] as num?)?.toDouble() ?? 0,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$ShoppingCartStateToJson(_ShoppingCartState instance) =>
    <String, dynamic>{
      'listProduct': instance.listProduct,
      'totalPrice': instance.totalPrice,
      'errorMessage': instance.errorMessage,
    };
