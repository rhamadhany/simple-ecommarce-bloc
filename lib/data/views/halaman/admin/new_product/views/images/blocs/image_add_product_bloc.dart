import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:simple_ecommarce_bloc/data/product/product_model.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/admin/new_product/views/images/events/image_add_product_event.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/admin/new_product/views/images/state/image_add_product_state.dart';

class ImageAddProductBloc
    extends Bloc<ImageAddProductEvent, ImageAddProductState> {
  ImageAddProductBloc() : super(ImageAddProductState(images: [])) {
    on<AddImage>(pickImages);
    on<RemoveImage>(removeImages);
  }

  void removeImages(RemoveImage event, Emitter<ImageAddProductState> emit) {
    final relist = List<String>.from(state.images);
    relist.removeAt(event.index);
    emit(ImageAddProductState(images: relist));
  }

  void pickImages(AddImage event, Emitter<ImageAddProductState> emit) async {
    try {
      final picker = ImagePicker();
      final result = await picker.pickMultiImage();
      if (result.isNotEmpty) {
        final imagePath = <String>[];
        for (var image in result) {
          final bytes = await image.readAsBytes();

          final outputPath = await getApplicationCacheDirectory();
          final output =
              '${outputPath.path}/${DateTime.now().codeProduct}_${image.path.split('.').last}';

          await File(output).writeAsBytes(bytes);
          imagePath.add(output);
        }

        emit(ImageAddProductState(images: [...state.images, ...imagePath]));
      }
    } catch (e) {
      emit(
        ImageAddProductState(
          images: state.images,
          errorMessage: 'Failed to add images $e',
        ),
      );
    }
  }
}
