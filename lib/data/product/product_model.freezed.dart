// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductModel {

 String get codeProduct; String get nameProduct; List<String> get images; double get purchasePrice; double get sellingPrice; int get selling; int get stock; int get discont; String get description;
/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductModelCopyWith<ProductModel> get copyWith => _$ProductModelCopyWithImpl<ProductModel>(this as ProductModel, _$identity);

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductModel&&(identical(other.codeProduct, codeProduct) || other.codeProduct == codeProduct)&&(identical(other.nameProduct, nameProduct) || other.nameProduct == nameProduct)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.purchasePrice, purchasePrice) || other.purchasePrice == purchasePrice)&&(identical(other.sellingPrice, sellingPrice) || other.sellingPrice == sellingPrice)&&(identical(other.selling, selling) || other.selling == selling)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.discont, discont) || other.discont == discont)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,codeProduct,nameProduct,const DeepCollectionEquality().hash(images),purchasePrice,sellingPrice,selling,stock,discont,description);

@override
String toString() {
  return 'ProductModel(codeProduct: $codeProduct, nameProduct: $nameProduct, images: $images, purchasePrice: $purchasePrice, sellingPrice: $sellingPrice, selling: $selling, stock: $stock, discont: $discont, description: $description)';
}


}

/// @nodoc
abstract mixin class $ProductModelCopyWith<$Res>  {
  factory $ProductModelCopyWith(ProductModel value, $Res Function(ProductModel) _then) = _$ProductModelCopyWithImpl;
@useResult
$Res call({
 String codeProduct, String nameProduct, List<String> images, double purchasePrice, double sellingPrice, int selling, int stock, int discont, String description
});




}
/// @nodoc
class _$ProductModelCopyWithImpl<$Res>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._self, this._then);

  final ProductModel _self;
  final $Res Function(ProductModel) _then;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? codeProduct = null,Object? nameProduct = null,Object? images = null,Object? purchasePrice = null,Object? sellingPrice = null,Object? selling = null,Object? stock = null,Object? discont = null,Object? description = null,}) {
  return _then(_self.copyWith(
codeProduct: null == codeProduct ? _self.codeProduct : codeProduct // ignore: cast_nullable_to_non_nullable
as String,nameProduct: null == nameProduct ? _self.nameProduct : nameProduct // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,purchasePrice: null == purchasePrice ? _self.purchasePrice : purchasePrice // ignore: cast_nullable_to_non_nullable
as double,sellingPrice: null == sellingPrice ? _self.sellingPrice : sellingPrice // ignore: cast_nullable_to_non_nullable
as double,selling: null == selling ? _self.selling : selling // ignore: cast_nullable_to_non_nullable
as int,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,discont: null == discont ? _self.discont : discont // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductModel].
extension ProductModelPatterns on ProductModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String codeProduct,  String nameProduct,  List<String> images,  double purchasePrice,  double sellingPrice,  int selling,  int stock,  int discont,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that.codeProduct,_that.nameProduct,_that.images,_that.purchasePrice,_that.sellingPrice,_that.selling,_that.stock,_that.discont,_that.description);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String codeProduct,  String nameProduct,  List<String> images,  double purchasePrice,  double sellingPrice,  int selling,  int stock,  int discont,  String description)  $default,) {final _that = this;
switch (_that) {
case _ProductModel():
return $default(_that.codeProduct,_that.nameProduct,_that.images,_that.purchasePrice,_that.sellingPrice,_that.selling,_that.stock,_that.discont,_that.description);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String codeProduct,  String nameProduct,  List<String> images,  double purchasePrice,  double sellingPrice,  int selling,  int stock,  int discont,  String description)?  $default,) {final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that.codeProduct,_that.nameProduct,_that.images,_that.purchasePrice,_that.sellingPrice,_that.selling,_that.stock,_that.discont,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductModel implements ProductModel {
   _ProductModel({required this.codeProduct, required this.nameProduct, required final  List<String> images, required this.purchasePrice, required this.sellingPrice, this.selling = 0, required this.stock, this.discont = 0, required this.description}): _images = images;
  factory _ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

@override final  String codeProduct;
@override final  String nameProduct;
 final  List<String> _images;
@override List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override final  double purchasePrice;
@override final  double sellingPrice;
@override@JsonKey() final  int selling;
@override final  int stock;
@override@JsonKey() final  int discont;
@override final  String description;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductModelCopyWith<_ProductModel> get copyWith => __$ProductModelCopyWithImpl<_ProductModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductModel&&(identical(other.codeProduct, codeProduct) || other.codeProduct == codeProduct)&&(identical(other.nameProduct, nameProduct) || other.nameProduct == nameProduct)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.purchasePrice, purchasePrice) || other.purchasePrice == purchasePrice)&&(identical(other.sellingPrice, sellingPrice) || other.sellingPrice == sellingPrice)&&(identical(other.selling, selling) || other.selling == selling)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.discont, discont) || other.discont == discont)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,codeProduct,nameProduct,const DeepCollectionEquality().hash(_images),purchasePrice,sellingPrice,selling,stock,discont,description);

@override
String toString() {
  return 'ProductModel(codeProduct: $codeProduct, nameProduct: $nameProduct, images: $images, purchasePrice: $purchasePrice, sellingPrice: $sellingPrice, selling: $selling, stock: $stock, discont: $discont, description: $description)';
}


}

/// @nodoc
abstract mixin class _$ProductModelCopyWith<$Res> implements $ProductModelCopyWith<$Res> {
  factory _$ProductModelCopyWith(_ProductModel value, $Res Function(_ProductModel) _then) = __$ProductModelCopyWithImpl;
@override @useResult
$Res call({
 String codeProduct, String nameProduct, List<String> images, double purchasePrice, double sellingPrice, int selling, int stock, int discont, String description
});




}
/// @nodoc
class __$ProductModelCopyWithImpl<$Res>
    implements _$ProductModelCopyWith<$Res> {
  __$ProductModelCopyWithImpl(this._self, this._then);

  final _ProductModel _self;
  final $Res Function(_ProductModel) _then;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? codeProduct = null,Object? nameProduct = null,Object? images = null,Object? purchasePrice = null,Object? sellingPrice = null,Object? selling = null,Object? stock = null,Object? discont = null,Object? description = null,}) {
  return _then(_ProductModel(
codeProduct: null == codeProduct ? _self.codeProduct : codeProduct // ignore: cast_nullable_to_non_nullable
as String,nameProduct: null == nameProduct ? _self.nameProduct : nameProduct // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,purchasePrice: null == purchasePrice ? _self.purchasePrice : purchasePrice // ignore: cast_nullable_to_non_nullable
as double,sellingPrice: null == sellingPrice ? _self.sellingPrice : sellingPrice // ignore: cast_nullable_to_non_nullable
as double,selling: null == selling ? _self.selling : selling // ignore: cast_nullable_to_non_nullable
as int,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,discont: null == discont ? _self.discont : discont // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
