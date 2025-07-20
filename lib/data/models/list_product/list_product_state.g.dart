// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_product_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListProductState _$ListProductStateFromJson(Map<String, dynamic> json) =>
    _ListProductState(
      listProduct: (json['listProduct'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isLoading: json['isLoading'] as bool? ?? true,
    );

Map<String, dynamic> _$ListProductStateToJson(_ListProductState instance) =>
    <String, dynamic>{
      'listProduct': instance.listProduct,
      'isLoading': instance.isLoading,
    };
