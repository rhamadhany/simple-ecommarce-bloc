// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductModel _$ProductModelFromJson(Map<String, dynamic> json) =>
    _ProductModel(
      codeProduct: json['codeProduct'] as String,
      nameProduct: json['nameProduct'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      purchasePrice: (json['purchasePrice'] as num).toDouble(),
      sellingPrice: (json['sellingPrice'] as num).toDouble(),
      selling: (json['selling'] as num?)?.toInt() ?? 0,
      stock: (json['stock'] as num).toInt(),
      discont: (json['discont'] as num?)?.toInt() ?? 0,
      description: json['description'] as String,
    );

Map<String, dynamic> _$ProductModelToJson(_ProductModel instance) =>
    <String, dynamic>{
      'codeProduct': instance.codeProduct,
      'nameProduct': instance.nameProduct,
      'images': instance.images,
      'purchasePrice': instance.purchasePrice,
      'sellingPrice': instance.sellingPrice,
      'selling': instance.selling,
      'stock': instance.stock,
      'discont': instance.discont,
      'description': instance.description,
    };
