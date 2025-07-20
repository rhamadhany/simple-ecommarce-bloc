import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_ecommarce_bloc/data/global/variable.dart';
import 'package:simple_ecommarce_bloc/data/product/product_model.dart';
part 'list_product_state.freezed.dart';
part 'list_product_state.g.dart';

@freezed
sealed class ListProductState with _$ListProductState {
  factory ListProductState({
    required List<ProductModel> listProduct,
    @Default(true) bool isLoading,
  }) = _ListProductState;
  factory ListProductState.fromJson(Map<String, dynamic> json) =>
      _$ListProductStateFromJson(json);

  factory ListProductState.initial() {
    return ListProductState(
      listProduct: [
        ProductModel(
          codeProduct: '123',
          nameProduct: 'Sample 1',
          images: [Variable.sampleImage],
          purchasePrice: 1000,
          sellingPrice: 1000,
          stock: 1,
          description: 'Sample 1',
        ),
      ],
    );
  }
}
