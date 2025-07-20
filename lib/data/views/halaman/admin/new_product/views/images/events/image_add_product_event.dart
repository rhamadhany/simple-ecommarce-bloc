import 'package:equatable/equatable.dart';

abstract class ImageAddProductEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AddImage extends ImageAddProductEvent {
  final List<String>? images;

  AddImage({this.images});

  @override
  List<Object?> get props => [images];
}

class RemoveImage extends ImageAddProductEvent {
  final int index;

  RemoveImage({required this.index});
  @override
  List<Object?> get props => [index];
}
