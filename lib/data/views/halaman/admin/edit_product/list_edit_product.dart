import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:simple_ecommarce_bloc/data/blocs/product_bloc.dart';
import 'package:simple_ecommarce_bloc/data/events/product_event.dart';
import 'package:simple_ecommarce_bloc/data/extensions/formatter.dart';
import 'package:simple_ecommarce_bloc/data/global/helper/snackbar.dart';
import 'package:simple_ecommarce_bloc/data/models/list_product/list_product_state.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/shopping_cart/bloc/shopping_cart_bloc.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/shopping_cart/events/shopping_cart_event.dart';

class ListEditProduct extends StatelessWidget {
  const ListEditProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Product',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: BlocBuilder<ProductBloc, ListProductState>(
        builder: (context, state) {
          final size = MediaQuery.of(context).size;

          return ListView.builder(
            itemCount: state.listProduct.length,
            itemBuilder: (BuildContext context, int index) {
              final product = state.listProduct[index];
              return Slidable(
                endActionPane: ActionPane(
                  motion: ScrollMotion(),
                  children: [
                    SlidableAction(
                      icon: Icons.delete,
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                      label: 'Delete',
                      onPressed: (_) {
                        context.read<ProductBloc>().add(
                          RemoveProduct(product: product),
                        );
                        context.read<ShoppingCartBloc>().add(
                          RemoveShoppingCart(product: product),
                        );

                        showSnackBar(
                          context: context,
                          content: '${[product.nameProduct]} deleted',
                        );
                      },
                    ),
                  ],
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 229, 220),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, spreadRadius: 1),
                          ],
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Image.file(
                          File(product.images.first),
                          fit: BoxFit.cover,
                          height: size.height * 0.1,
                          width: size.height * 0.1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.nameProduct,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),

                            Text(
                              'Rp ${product.sellingPrice.nominal}',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,

                                color: Colors.deepPurple,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
