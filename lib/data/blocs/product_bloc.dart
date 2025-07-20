import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:simple_ecommarce_bloc/data/events/product_event.dart';
import 'package:simple_ecommarce_bloc/data/models/list_product/list_product_state.dart';
import 'package:simple_ecommarce_bloc/data/product/product_model.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/admin/new_product/abstract/text_field_new_product.dart';

class ProductBloc extends HydratedBloc<ProductEvent, ListProductState> {
  ProductBloc() : super(ListProductState.initial()) {
    on<AddProduct>(newProduct);
    on<SellingProduct>(sellingProduct);
    on<RemoveProduct>(removeProduct);
  }

  void removeProduct(RemoveProduct event, Emitter<ListProductState> emit) {
    final relist = List<ProductModel>.from(state.listProduct);
    relist.remove(event.product);
    emit(ListProductState(listProduct: relist));
  }

  void sellingProduct(SellingProduct event, Emitter<ListProductState> emit) {
    final relist = List<ProductModel>.from(state.listProduct).map((item) {
      if (item.codeProduct == event.product.codeProduct) {
        return item.copyWith(selling: item.selling + event.amount);
      } else {
        return item;
      }
    }).toList();
    emit(ListProductState(listProduct: relist));
  }

  void newProduct(AddProduct event, Emitter<ListProductState> emit) {
    final fieldMap = {
      for (var textField in event.controllers)
        textField.field: textField.controller.text,
    };

    final productName = fieldMap[FieldNewProduct.productName];
    final stock = int.parse(fieldMap[FieldNewProduct.stock]!);
    final purchasePrice = double.parse(
      fieldMap[FieldNewProduct.purchasePrice]!,
    );
    final sellingPrice = double.parse(fieldMap[FieldNewProduct.sellingPrice]!);
    final description = fieldMap[FieldNewProduct.description];

    if (![
      productName,
      stock,
      purchasePrice,
      sellingPrice,
      description,
    ].any((list) => list == null)) {
      final product = ProductModel(
        codeProduct: DateTime.now().codeProduct,
        nameProduct: productName!,
        stock: stock,
        purchasePrice: purchasePrice,
        sellingPrice: sellingPrice,
        description: description!,
        images: event.images,
      );
      emit(ListProductState(listProduct: [...state.listProduct, product]));
    }
  }

  @override
  ListProductState? fromJson(Map<String, dynamic> json) {
    return ListProductState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ListProductState state) {
    return state.toJson();
  }
}
