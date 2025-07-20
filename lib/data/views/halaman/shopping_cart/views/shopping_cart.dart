import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:simple_ecommarce_bloc/data/extensions/formatter.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/shopping_cart/bloc/shopping_cart_bloc.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/shopping_cart/events/shopping_cart_event.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/shopping_cart/state/shoping_cart_state.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocConsumer<ShoppingCartBloc, ShoppingCartState>(
      listener: (context, state) {
        context.read<ShoppingCartBloc>().add(TotalSellingPrice());
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Shopping Cart',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          body: Padding(
            padding: const EdgeInsets.all(8.0),
            // child: BlocConsumer<ShoppingCartBloc, ShoppingCartState>(
            // builder: (context, state) {
            child: ListView.builder(
              itemCount: state.listProduct.length,
              itemBuilder: (BuildContext context, int index) {
                final product = state.listProduct[index];
                return Slidable(
                  endActionPane: ActionPane(
                    motion: ScrollMotion(),
                    children: [
                      SlidableAction(
                        icon: Icons.delete,
                        label: 'Delete',
                        onPressed: (_) {
                          context.read<ShoppingCartBloc>().add(
                            RemoveShoppingCart(product: product.product),
                          );
                        },
                      ),
                    ],
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 229, 220),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: InkWell(
                      onTap: () {
                        context.read<ShoppingCartBloc>().add(
                          ToggleSelectedShoppingCart(
                            selected: !product.selected,
                            product: product.product,
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsetsDirectional.all(12),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.deepPurple,
                                  spreadRadius: 1,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Image.file(
                              File(product.product.images.first),
                              fit: BoxFit.cover,
                              height: size.height * 0.1,
                              width: size.height * 0.1,
                            ),
                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.product.nameProduct,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                'Rp ${product.product.sellingPrice.nominal}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple,
                                ),
                              ),

                              Text(
                                product.amount.toString(),
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Spacer(),
                          Checkbox(
                            value: product.selected,
                            onChanged: (value) {
                              context.read<ShoppingCartBloc>().add(
                                ToggleSelectedShoppingCart(
                                  selected: value ?? false,
                                  product: product.product,
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            // },
            // listener: (BuildContext context, ShoppingCartState state) {
            //   // if (state.listProduct.any((item) => item.selected == true)) {
            //   context.read<ShoppingCartBloc>().add(TotalSellingPrice());
            //   // }
            // },
            // ),
          ),
          bottomNavigationBar: state.totalPrice > 0
              ? InkWell(
                  onTap: () {
                    context.read<ShoppingCartBloc>().add(
                      SellingShoppingCart(context: context),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 229, 220),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Rp ${state.totalPrice.nominal}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurpleAccent,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.shopping_cart_checkout,
                          size: 50,
                          color: Colors.deepPurpleAccent,
                        ),
                      ],
                    ),
                  ),
                )
              : null,
        );
      },
    );
  }
}
