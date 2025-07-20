import 'package:equatable/equatable.dart';

class ImageAddProductState extends Equatable {
  final List<String> images;
  final String? errorMessage;

  const ImageAddProductState({required this.images, this.errorMessage});
  @override
  List<Object?> get props => [images];
}
