import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_ecommarce_bloc/data/theme/theme_service.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/admin/edit_product/list_edit_product.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/admin/models/button_model_admin.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/admin/new_product/abstract/text_field_new_product.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/admin/new_product/views/new_product_view.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/home/painter/background_painter.dart';

class ProductAdminView extends StatelessWidget {
  const ProductAdminView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Admin Panel',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          final size = MediaQuery.of(context).size;
          return CustomPaint(
            painter: BackgroundPainter(
              color: state.isDark
                  ? Colors.black87
                  : const Color.fromARGB(255, 255, 237, 237),
            ),
            child: Center(
              child: Container(
                // margin: EdgeInsets.symmetric(vertical: size.height * 0.5),
                // margin: EdgeInsetsDirectional.symmetric(horizontal: 20),
                width: size.width * 0.95,
                height: size.height * 0.35,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 221, 209),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurple.withAlpha(100),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ButtonModelAdmin(
                      icons: Icons.shop,
                      onTap: () {
                        TextFieldNewProduct.resetController();

                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => NewProductView(),
                          ),
                        );
                      },
                      title: 'New Product',
                    ),

                    ButtonModelAdmin(
                      icons: Icons.shopping_bag_sharp,
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ListEditProduct(),
                          ),
                        );
                      },
                      title: 'Edit Product',
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
