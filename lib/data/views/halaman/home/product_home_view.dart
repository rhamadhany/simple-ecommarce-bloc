import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_ecommarce_bloc/data/blocs/product_bloc.dart';
import 'package:simple_ecommarce_bloc/data/extensions/formatter.dart';
import 'package:simple_ecommarce_bloc/data/global/variable.dart';
import 'package:simple_ecommarce_bloc/data/models/list_product/list_product_state.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/home/details_product/details_product.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/home/painter/background_painter.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/shopping_cart/views/shopping_cart.dart';

class ProductHomeView extends StatelessWidget {
  const ProductHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'List Product',
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
      body: CustomPaint(
        painter: BackgroundPainter(
          color: const Color.fromARGB(255, 255, 237, 237),
        ),
        child: BlocBuilder<ProductBloc, ListProductState>(
          builder: (context, state) {
            final size = MediaQuery.of(context).size;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: Variable.isAndroid ? 2 : 4,
                  childAspectRatio: Variable.isAndroid ? 0.75 : 0.75,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),

                itemCount: state.listProduct.length,
                padding: EdgeInsetsDirectional.only(bottom: size.height * 0.25),
                itemBuilder: (BuildContext context, int index) {
                  final product = state.listProduct[index];
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailsProduct(product: product),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsetsDirectional.all(16),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 254, 241, 228),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.file(
                                  File(product.images.first),
                                  fit: BoxFit.cover,
                                  height: size.height * 0.25,
                                  width: size.height * 0.25,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                product.nameProduct,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),

                              SizedBox(height: 4),
                              Text(
                                'Rp ${product.sellingPrice.nominal}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Colors.deepPurpleAccent,
                                ),
                              ),
                              Text(
                                '${product.selling}/${product.stock}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
