import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_ecommarce_bloc/data/blocs/product_bloc.dart';
import 'package:simple_ecommarce_bloc/data/events/product_event.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/admin/new_product/abstract/text_field_new_product.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/admin/new_product/views/images/blocs/image_add_product_bloc.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/admin/new_product/views/images/views/images_row_new_product.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/admin/new_product/views/text_field_add_product.dart';

class NewProductView extends StatelessWidget {
  const NewProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImageAddProductBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'New Produk',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ImagesRowNewProduct(),
                SizedBox(height: 20),

                ...List.generate(TextFieldNewProduct.controllers.length, (
                  index,
                ) {
                  final textField = TextFieldNewProduct.controllers[index];

                  return TextFieldAddProduct(
                    key: ValueKey('textfield_${textField.field}'),
                    controller: textField.controller,
                    keyboardType: textField.keyboardType,
                    label: textField.label,
                    prefixText: textField.prefixText,
                  );
                }),

                SizedBox(height: MediaQuery.of(context).size.height * 0.25),
              ],
            ),
          ),
        ),
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              child: Icon(Icons.done),
              onPressed: () {
                final images = context.read<ImageAddProductBloc>().state.images;
                context.read<ProductBloc>().add(
                  AddProduct(
                    controllers: TextFieldNewProduct.controllers,
                    images: images,
                  ),
                );
                Navigator.of(context).pop();
              },
            );
          },
        ),
      ),
    );
  }
}
