import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/admin/new_product/views/images/blocs/image_add_product_bloc.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/admin/new_product/views/images/events/image_add_product_event.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/admin/new_product/views/images/state/image_add_product_state.dart';

class ImagesRowNewProduct extends StatelessWidget {
  const ImagesRowNewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageAddProductBloc, ImageAddProductState>(
      builder: (context, state) {
        final size = MediaQuery.of(context).size;

        if (state.errorMessage == null) {
          return SizedBox(
            width: size.width * 0.85,
            height: size.height * 0.3,
            child: state.images.isEmpty
                ? IconButton(
                    onPressed: () {
                      context.read<ImageAddProductBloc>().add(AddImage());
                    },
                    icon: Icon(Icons.add, size: 50),
                  )
                : SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Builder(
                          builder: (context) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ...List.generate(state.images.length + 1, (
                                  index,
                                ) {
                                  if (index <= state.images.length - 1) {
                                    return Container(
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 8,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      clipBehavior: Clip.hardEdge,
                                      child: Stack(
                                        children: [
                                          Image.file(
                                            File(state.images[index]),
                                            height: size.height * 0.25,
                                            width: size.height * 0.25,
                                            fit: BoxFit.cover,
                                          ),
                                          Positioned(
                                            top: 1,
                                            right: 1,
                                            child: InkWell(
                                              onTap: () {
                                                context
                                                    .read<ImageAddProductBloc>()
                                                    .add(
                                                      RemoveImage(index: index),
                                                    );
                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(2.5),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.deepPurple
                                                          .withAlpha(200),
                                                      spreadRadius: 1,
                                                    ),
                                                  ],
                                                  color: Colors.red,
                                                ),
                                                child: Icon(
                                                  Icons.close,
                                                  color: Colors.white,
                                                  size: 25,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  } else {
                                    return IconButton(
                                      onPressed: () {
                                        context.read<ImageAddProductBloc>().add(
                                          AddImage(),
                                        );
                                      },
                                      icon: Icon(Icons.add, size: 50),
                                    );
                                  }
                                }),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
          );
        } else {
          return Text(state.errorMessage!);
        }
      },
    );
  }
}

extension KeySize on GlobalKey {
  Size? get size {
    final box = currentContext?.findRenderObject() as RenderBox?;
    final size = box?.size;
    return size;
  }
}
