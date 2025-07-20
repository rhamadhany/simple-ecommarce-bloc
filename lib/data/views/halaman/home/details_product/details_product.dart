import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_ecommarce_bloc/data/extensions/formatter.dart';
import 'package:simple_ecommarce_bloc/data/global/helper/snackbar.dart';
import 'package:simple_ecommarce_bloc/data/product/product_model.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/shopping_cart/bloc/shopping_cart_bloc.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/shopping_cart/events/shopping_cart_event.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/shopping_cart/state/shoping_cart_state.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/shopping_cart/views/shopping_cart.dart';

class DetailsProduct extends StatelessWidget {
  const DetailsProduct({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          product.nameProduct,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => ShoppingCart()));
            },
            icon: Icon(Icons.shopping_cart_checkout),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              product.images.length == 1
                  ? Center(
                      child: Container(
                        height: size.height * 0.5,
                        margin: EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 4,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Image.file(
                          File(product.images.first),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  : SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(product.images.length, (index) {
                          return Container(
                            height: size.height * 0.5,
                            margin: EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 4,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Image.file(
                              File(product.images[index]),
                              fit: BoxFit.cover,
                            ),
                          );
                        }),
                      ),
                    ),

              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Rp ${product.sellingPrice.nominal}",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Selling ${product.selling}/${product.stock}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                margin: EdgeInsets.all(8),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 232, 223),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  product.description,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BlocConsumer<ShoppingCartBloc, ShoppingCartState>(
        listener: (context, state) {
          if (state.errorMessage != null) {
            showSnackBar(context: context, content: state.errorMessage!);
          }
        },
        builder: (context, state) {
          return IconButton(
            onPressed: () {
              context.read<ShoppingCartBloc>().add(
                AddShoppingCartEvent(product: product, context: context),
              );
            },
            icon: Icon(Icons.add_shopping_cart),
          );
        },
      ),
    );
  }
}
