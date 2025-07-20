import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:simple_ecommarce_bloc/data/blocs/product_bloc.dart';
import 'package:simple_ecommarce_bloc/data/events/product_event.dart';
import 'package:simple_ecommarce_bloc/data/extensions/formatter.dart';
import 'package:simple_ecommarce_bloc/data/global/helper/snackbar.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/shopping_cart/events/shopping_cart_event.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/shopping_cart/model/shopping_cart_model.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/shopping_cart/state/shoping_cart_state.dart';

class ShoppingCartBloc
    extends HydratedBloc<ShoppingCartEvent, ShoppingCartState> {
  ShoppingCartBloc() : super(ShoppingCartState(listProduct: [])) {
    on<AddShoppingCartEvent>(addToBasket);
    on<ToggleSelectedShoppingCart>(toggleSelected);
    on<TotalSellingPrice>(totalSellingPrice);
    on<SellingShoppingCart>(sellingShoppingCart);
    on<RemoveShoppingCart>(removeShoppingCart);
  }

  void removeShoppingCart(
    RemoveShoppingCart event,
    Emitter<ShoppingCartState> emit,
  ) {
    final relist = List<ShoppingCartModel>.from(state.listProduct);
    relist.removeWhere((item) => item.product == event.product);
    emit(ShoppingCartState(listProduct: relist));
  }

  void sellingShoppingCart(
    SellingShoppingCart event,
    Emitter<ShoppingCartState> emit,
  ) {
    final relist = <ShoppingCartModel>[];
    final totalItem = state.listProduct.fold(
      0,
      (before, after) => before + after.amount,
    );
    final totalPrice = 'Rp ${state.totalPrice.nominal}';

    for (var item in state.listProduct) {
      if (item.selected) {
        BlocProvider.of<ProductBloc>(
          event.context,
        ).add(SellingProduct(product: item.product, amount: item.amount));
        // event.context.read<ProductBloc>().add(
        //   SellingProduct(product: item.product, amount: item.amount),
        // );
      } else {
        relist.add(item);
      }
    }

    emit(ShoppingCartState(listProduct: relist));

    showSnackBar(
      context: event.context,
      content: 'Selling $totalItem product costing $totalPrice',
    );
  }

  void totalSellingPrice(event, emit) {
    final total = state.listProduct
        .where((item) => item.selected == true)
        .fold(
          0.0,
          (before, after) =>
              before + (after.amount * after.product.sellingPrice),
        );

    emit(ShoppingCartState(listProduct: state.listProduct, totalPrice: total));
  }

  void toggleSelected(
    ToggleSelectedShoppingCart event,
    Emitter<ShoppingCartState> emit,
  ) {
    final relist = List<ShoppingCartModel>.from(state.listProduct).map((map) {
      if (map.product.codeProduct == event.product.codeProduct) {
        return map.copyWith(selected: event.selected);
      } else {
        return map;
      }
    }).toList();
    emit(ShoppingCartState(listProduct: relist));
  }

  void addToBasket(
    AddShoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) {
    try {
      final exist = state.listProduct.any(
        (any) => any.product.codeProduct == event.product.codeProduct,
      );
      List<ShoppingCartModel> relist = <ShoppingCartModel>[];

      if (exist) {
        relist = state.listProduct.map((item) {
          if (item.product.codeProduct == event.product.codeProduct) {
            if (item.amount + 1 <=
                (item.product.stock - item.product.selling)) {
              showSnackBar(
                context: event.context,
                content: '${event.product.nameProduct} Added to cart!',
              );
              return item.copyWith(amount: item.amount + 1);
            } else {
              throw Exception(
                '${item.product.nameProduct} only remain ${item.product.stock - item.product.selling}',
              );
            }
          } else {
            return item;
          }
        }).toList();
      } else {
        relist = [
          ShoppingCartModel(product: event.product, amount: 1),
          ...state.listProduct,
        ];
      }

      emit(ShoppingCartState(listProduct: relist));
    } catch (e) {
      emit(
        ShoppingCartState(
          listProduct: state.listProduct,
          errorMessage: 'Failed $e',
        ),
      );
    }
  }

  @override
  ShoppingCartState? fromJson(Map<String, dynamic> json) {
    return ShoppingCartState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ShoppingCartState state) {
    return state.toJson();
  }
}
