// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shoping_cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShoppingCartState {

 List<ShoppingCartModel> get listProduct; double get totalPrice; String? get errorMessage;
/// Create a copy of ShoppingCartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShoppingCartStateCopyWith<ShoppingCartState> get copyWith => _$ShoppingCartStateCopyWithImpl<ShoppingCartState>(this as ShoppingCartState, _$identity);

  /// Serializes this ShoppingCartState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShoppingCartState&&const DeepCollectionEquality().equals(other.listProduct, listProduct)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(listProduct),totalPrice,errorMessage);

@override
String toString() {
  return 'ShoppingCartState(listProduct: $listProduct, totalPrice: $totalPrice, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ShoppingCartStateCopyWith<$Res>  {
  factory $ShoppingCartStateCopyWith(ShoppingCartState value, $Res Function(ShoppingCartState) _then) = _$ShoppingCartStateCopyWithImpl;
@useResult
$Res call({
 List<ShoppingCartModel> listProduct, double totalPrice, String? errorMessage
});




}
/// @nodoc
class _$ShoppingCartStateCopyWithImpl<$Res>
    implements $ShoppingCartStateCopyWith<$Res> {
  _$ShoppingCartStateCopyWithImpl(this._self, this._then);

  final ShoppingCartState _self;
  final $Res Function(ShoppingCartState) _then;

/// Create a copy of ShoppingCartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listProduct = null,Object? totalPrice = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
listProduct: null == listProduct ? _self.listProduct : listProduct // ignore: cast_nullable_to_non_nullable
as List<ShoppingCartModel>,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ShoppingCartState].
extension ShoppingCartStatePatterns on ShoppingCartState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShoppingCartState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShoppingCartState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShoppingCartState value)  $default,){
final _that = this;
switch (_that) {
case _ShoppingCartState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShoppingCartState value)?  $default,){
final _that = this;
switch (_that) {
case _ShoppingCartState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ShoppingCartModel> listProduct,  double totalPrice,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShoppingCartState() when $default != null:
return $default(_that.listProduct,_that.totalPrice,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ShoppingCartModel> listProduct,  double totalPrice,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ShoppingCartState():
return $default(_that.listProduct,_that.totalPrice,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ShoppingCartModel> listProduct,  double totalPrice,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ShoppingCartState() when $default != null:
return $default(_that.listProduct,_that.totalPrice,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShoppingCartState implements ShoppingCartState {
   _ShoppingCartState({required final  List<ShoppingCartModel> listProduct, this.totalPrice = 0, this.errorMessage}): _listProduct = listProduct;
  factory _ShoppingCartState.fromJson(Map<String, dynamic> json) => _$ShoppingCartStateFromJson(json);

 final  List<ShoppingCartModel> _listProduct;
@override List<ShoppingCartModel> get listProduct {
  if (_listProduct is EqualUnmodifiableListView) return _listProduct;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listProduct);
}

@override@JsonKey() final  double totalPrice;
@override final  String? errorMessage;

/// Create a copy of ShoppingCartState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShoppingCartStateCopyWith<_ShoppingCartState> get copyWith => __$ShoppingCartStateCopyWithImpl<_ShoppingCartState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShoppingCartStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShoppingCartState&&const DeepCollectionEquality().equals(other._listProduct, _listProduct)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_listProduct),totalPrice,errorMessage);

@override
String toString() {
  return 'ShoppingCartState(listProduct: $listProduct, totalPrice: $totalPrice, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ShoppingCartStateCopyWith<$Res> implements $ShoppingCartStateCopyWith<$Res> {
  factory _$ShoppingCartStateCopyWith(_ShoppingCartState value, $Res Function(_ShoppingCartState) _then) = __$ShoppingCartStateCopyWithImpl;
@override @useResult
$Res call({
 List<ShoppingCartModel> listProduct, double totalPrice, String? errorMessage
});




}
/// @nodoc
class __$ShoppingCartStateCopyWithImpl<$Res>
    implements _$ShoppingCartStateCopyWith<$Res> {
  __$ShoppingCartStateCopyWithImpl(this._self, this._then);

  final _ShoppingCartState _self;
  final $Res Function(_ShoppingCartState) _then;

/// Create a copy of ShoppingCartState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listProduct = null,Object? totalPrice = null,Object? errorMessage = freezed,}) {
  return _then(_ShoppingCartState(
listProduct: null == listProduct ? _self._listProduct : listProduct // ignore: cast_nullable_to_non_nullable
as List<ShoppingCartModel>,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
