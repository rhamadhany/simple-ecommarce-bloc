// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping_cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShoppingCartModel implements DiagnosticableTreeMixin {

 ProductModel get product; int get amount; bool get selected;
/// Create a copy of ShoppingCartModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShoppingCartModelCopyWith<ShoppingCartModel> get copyWith => _$ShoppingCartModelCopyWithImpl<ShoppingCartModel>(this as ShoppingCartModel, _$identity);

  /// Serializes this ShoppingCartModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ShoppingCartModel'))
    ..add(DiagnosticsProperty('product', product))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('selected', selected));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShoppingCartModel&&(identical(other.product, product) || other.product == product)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.selected, selected) || other.selected == selected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,amount,selected);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ShoppingCartModel(product: $product, amount: $amount, selected: $selected)';
}


}

/// @nodoc
abstract mixin class $ShoppingCartModelCopyWith<$Res>  {
  factory $ShoppingCartModelCopyWith(ShoppingCartModel value, $Res Function(ShoppingCartModel) _then) = _$ShoppingCartModelCopyWithImpl;
@useResult
$Res call({
 ProductModel product, int amount, bool selected
});


$ProductModelCopyWith<$Res> get product;

}
/// @nodoc
class _$ShoppingCartModelCopyWithImpl<$Res>
    implements $ShoppingCartModelCopyWith<$Res> {
  _$ShoppingCartModelCopyWithImpl(this._self, this._then);

  final ShoppingCartModel _self;
  final $Res Function(ShoppingCartModel) _then;

/// Create a copy of ShoppingCartModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = null,Object? amount = null,Object? selected = null,}) {
  return _then(_self.copyWith(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ShoppingCartModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductModelCopyWith<$Res> get product {
  
  return $ProductModelCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [ShoppingCartModel].
extension ShoppingCartModelPatterns on ShoppingCartModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShoppingCartModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShoppingCartModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShoppingCartModel value)  $default,){
final _that = this;
switch (_that) {
case _ShoppingCartModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShoppingCartModel value)?  $default,){
final _that = this;
switch (_that) {
case _ShoppingCartModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductModel product,  int amount,  bool selected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShoppingCartModel() when $default != null:
return $default(_that.product,_that.amount,_that.selected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductModel product,  int amount,  bool selected)  $default,) {final _that = this;
switch (_that) {
case _ShoppingCartModel():
return $default(_that.product,_that.amount,_that.selected);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductModel product,  int amount,  bool selected)?  $default,) {final _that = this;
switch (_that) {
case _ShoppingCartModel() when $default != null:
return $default(_that.product,_that.amount,_that.selected);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShoppingCartModel with DiagnosticableTreeMixin implements ShoppingCartModel {
   _ShoppingCartModel({required this.product, required this.amount, this.selected = false});
  factory _ShoppingCartModel.fromJson(Map<String, dynamic> json) => _$ShoppingCartModelFromJson(json);

@override final  ProductModel product;
@override final  int amount;
@override@JsonKey() final  bool selected;

/// Create a copy of ShoppingCartModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShoppingCartModelCopyWith<_ShoppingCartModel> get copyWith => __$ShoppingCartModelCopyWithImpl<_ShoppingCartModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShoppingCartModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ShoppingCartModel'))
    ..add(DiagnosticsProperty('product', product))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('selected', selected));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShoppingCartModel&&(identical(other.product, product) || other.product == product)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.selected, selected) || other.selected == selected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,amount,selected);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ShoppingCartModel(product: $product, amount: $amount, selected: $selected)';
}


}

/// @nodoc
abstract mixin class _$ShoppingCartModelCopyWith<$Res> implements $ShoppingCartModelCopyWith<$Res> {
  factory _$ShoppingCartModelCopyWith(_ShoppingCartModel value, $Res Function(_ShoppingCartModel) _then) = __$ShoppingCartModelCopyWithImpl;
@override @useResult
$Res call({
 ProductModel product, int amount, bool selected
});


@override $ProductModelCopyWith<$Res> get product;

}
/// @nodoc
class __$ShoppingCartModelCopyWithImpl<$Res>
    implements _$ShoppingCartModelCopyWith<$Res> {
  __$ShoppingCartModelCopyWithImpl(this._self, this._then);

  final _ShoppingCartModel _self;
  final $Res Function(_ShoppingCartModel) _then;

/// Create a copy of ShoppingCartModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = null,Object? amount = null,Object? selected = null,}) {
  return _then(_ShoppingCartModel(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ShoppingCartModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductModelCopyWith<$Res> get product {
  
  return $ProductModelCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on
