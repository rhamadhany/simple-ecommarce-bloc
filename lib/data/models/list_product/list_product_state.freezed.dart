// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListProductState {

 List<ProductModel> get listProduct; bool get isLoading;
/// Create a copy of ListProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListProductStateCopyWith<ListProductState> get copyWith => _$ListProductStateCopyWithImpl<ListProductState>(this as ListProductState, _$identity);

  /// Serializes this ListProductState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListProductState&&const DeepCollectionEquality().equals(other.listProduct, listProduct)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(listProduct),isLoading);

@override
String toString() {
  return 'ListProductState(listProduct: $listProduct, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $ListProductStateCopyWith<$Res>  {
  factory $ListProductStateCopyWith(ListProductState value, $Res Function(ListProductState) _then) = _$ListProductStateCopyWithImpl;
@useResult
$Res call({
 List<ProductModel> listProduct, bool isLoading
});




}
/// @nodoc
class _$ListProductStateCopyWithImpl<$Res>
    implements $ListProductStateCopyWith<$Res> {
  _$ListProductStateCopyWithImpl(this._self, this._then);

  final ListProductState _self;
  final $Res Function(ListProductState) _then;

/// Create a copy of ListProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listProduct = null,Object? isLoading = null,}) {
  return _then(_self.copyWith(
listProduct: null == listProduct ? _self.listProduct : listProduct // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ListProductState].
extension ListProductStatePatterns on ListProductState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListProductState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListProductState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListProductState value)  $default,){
final _that = this;
switch (_that) {
case _ListProductState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListProductState value)?  $default,){
final _that = this;
switch (_that) {
case _ListProductState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductModel> listProduct,  bool isLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListProductState() when $default != null:
return $default(_that.listProduct,_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductModel> listProduct,  bool isLoading)  $default,) {final _that = this;
switch (_that) {
case _ListProductState():
return $default(_that.listProduct,_that.isLoading);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductModel> listProduct,  bool isLoading)?  $default,) {final _that = this;
switch (_that) {
case _ListProductState() when $default != null:
return $default(_that.listProduct,_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListProductState implements ListProductState {
   _ListProductState({required final  List<ProductModel> listProduct, this.isLoading = true}): _listProduct = listProduct;
  factory _ListProductState.fromJson(Map<String, dynamic> json) => _$ListProductStateFromJson(json);

 final  List<ProductModel> _listProduct;
@override List<ProductModel> get listProduct {
  if (_listProduct is EqualUnmodifiableListView) return _listProduct;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listProduct);
}

@override@JsonKey() final  bool isLoading;

/// Create a copy of ListProductState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListProductStateCopyWith<_ListProductState> get copyWith => __$ListProductStateCopyWithImpl<_ListProductState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListProductStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListProductState&&const DeepCollectionEquality().equals(other._listProduct, _listProduct)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_listProduct),isLoading);

@override
String toString() {
  return 'ListProductState(listProduct: $listProduct, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$ListProductStateCopyWith<$Res> implements $ListProductStateCopyWith<$Res> {
  factory _$ListProductStateCopyWith(_ListProductState value, $Res Function(_ListProductState) _then) = __$ListProductStateCopyWithImpl;
@override @useResult
$Res call({
 List<ProductModel> listProduct, bool isLoading
});




}
/// @nodoc
class __$ListProductStateCopyWithImpl<$Res>
    implements _$ListProductStateCopyWith<$Res> {
  __$ListProductStateCopyWithImpl(this._self, this._then);

  final _ListProductState _self;
  final $Res Function(_ListProductState) _then;

/// Create a copy of ListProductState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listProduct = null,Object? isLoading = null,}) {
  return _then(_ListProductState(
listProduct: null == listProduct ? _self._listProduct : listProduct // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
