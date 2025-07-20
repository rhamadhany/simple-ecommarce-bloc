import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/shopping_cart/model/shopping_cart_model.dart';
part 'shoping_cart_state.freezed.dart';
part 'shoping_cart_state.g.dart';

@freezed
abstract class ShoppingCartState with _$ShoppingCartState {
  factory ShoppingCartState({
    required List<ShoppingCartModel> listProduct,
    @Default(0) double totalPrice,
    String? errorMessage,
  }) = _ShoppingCartState;

  factory ShoppingCartState.fromJson(Map<String, dynamic> json) =>
      _$ShoppingCartStateFromJson(json);
}
