import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
sealed class ProductModel with _$ProductModel {
  factory ProductModel({
    required String codeProduct,
    required String nameProduct,
    required List<String> images,
    required double purchasePrice,
    required double sellingPrice,
    @Default(0) int selling,
    required int stock,
    @Default(0) int discont,
    required String description,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

extension DateTimeFormatter on DateTime {
  String get codeProduct {
    final chars = 'abcdefghijklmnopqrstupqrstwxyz0123456789';
    final random = Random();

    final generate = String.fromCharCodes(
      Iterable.generate(
        8,
        (_) => chars.codeUnitAt(random.nextInt(chars.length)),
      ),
    );
    return '${generate}_$millisecondsSinceEpoch';
  }
}
