// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Item {
  ItemName get name => throw _privateConstructorUsedError;
  WithoutTaxPrice get price => throw _privateConstructorUsedError;
  Tax get tax => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call({ItemName name, WithoutTaxPrice price, Tax tax});

  $ItemNameCopyWith<$Res> get name;
  $WithoutTaxPriceCopyWith<$Res> get price;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? tax = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ItemName,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as WithoutTaxPrice,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as Tax,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemNameCopyWith<$Res> get name {
    return $ItemNameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WithoutTaxPriceCopyWith<$Res> get price {
    return $WithoutTaxPriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$_ItemCopyWith(_$_Item value, $Res Function(_$_Item) then) =
      __$$_ItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ItemName name, WithoutTaxPrice price, Tax tax});

  @override
  $ItemNameCopyWith<$Res> get name;
  @override
  $WithoutTaxPriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$_ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res, _$_Item>
    implements _$$_ItemCopyWith<$Res> {
  __$$_ItemCopyWithImpl(_$_Item _value, $Res Function(_$_Item) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? tax = null,
  }) {
    return _then(_$_Item(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ItemName,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as WithoutTaxPrice,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as Tax,
    ));
  }
}

/// @nodoc

class _$_Item extends _Item {
  const _$_Item({required this.name, required this.price, required this.tax})
      : super._();

  @override
  final ItemName name;
  @override
  final WithoutTaxPrice price;
  @override
  final Tax tax;

  @override
  String toString() {
    return 'Item(name: $name, price: $price, tax: $tax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Item &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.tax, tax) || other.tax == tax));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, price, tax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemCopyWith<_$_Item> get copyWith =>
      __$$_ItemCopyWithImpl<_$_Item>(this, _$identity);
}

abstract class _Item extends Item {
  const factory _Item(
      {required final ItemName name,
      required final WithoutTaxPrice price,
      required final Tax tax}) = _$_Item;
  const _Item._() : super._();

  @override
  ItemName get name;
  @override
  WithoutTaxPrice get price;
  @override
  Tax get tax;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCopyWith<_$_Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemName {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemNameCopyWith<ItemName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemNameCopyWith<$Res> {
  factory $ItemNameCopyWith(ItemName value, $Res Function(ItemName) then) =
      _$ItemNameCopyWithImpl<$Res, ItemName>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$ItemNameCopyWithImpl<$Res, $Val extends ItemName>
    implements $ItemNameCopyWith<$Res> {
  _$ItemNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemNameCopyWith<$Res> implements $ItemNameCopyWith<$Res> {
  factory _$$_ItemNameCopyWith(
          _$_ItemName value, $Res Function(_$_ItemName) then) =
      __$$_ItemNameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_ItemNameCopyWithImpl<$Res>
    extends _$ItemNameCopyWithImpl<$Res, _$_ItemName>
    implements _$$_ItemNameCopyWith<$Res> {
  __$$_ItemNameCopyWithImpl(
      _$_ItemName _value, $Res Function(_$_ItemName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_ItemName(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ItemName extends _ItemName {
  const _$_ItemName({required this.value}) : super._();

  @override
  final String value;

  @override
  String toString() {
    return 'ItemName(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemName &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemNameCopyWith<_$_ItemName> get copyWith =>
      __$$_ItemNameCopyWithImpl<_$_ItemName>(this, _$identity);
}

abstract class _ItemName extends ItemName {
  const factory _ItemName({required final String value}) = _$_ItemName;
  const _ItemName._() : super._();

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_ItemNameCopyWith<_$_ItemName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WithoutTaxPrice {
  double get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WithoutTaxPriceCopyWith<WithoutTaxPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithoutTaxPriceCopyWith<$Res> {
  factory $WithoutTaxPriceCopyWith(
          WithoutTaxPrice value, $Res Function(WithoutTaxPrice) then) =
      _$WithoutTaxPriceCopyWithImpl<$Res, WithoutTaxPrice>;
  @useResult
  $Res call({double value});
}

/// @nodoc
class _$WithoutTaxPriceCopyWithImpl<$Res, $Val extends WithoutTaxPrice>
    implements $WithoutTaxPriceCopyWith<$Res> {
  _$WithoutTaxPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WithoutTaxPriceCopyWith<$Res>
    implements $WithoutTaxPriceCopyWith<$Res> {
  factory _$$_WithoutTaxPriceCopyWith(
          _$_WithoutTaxPrice value, $Res Function(_$_WithoutTaxPrice) then) =
      __$$_WithoutTaxPriceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$_WithoutTaxPriceCopyWithImpl<$Res>
    extends _$WithoutTaxPriceCopyWithImpl<$Res, _$_WithoutTaxPrice>
    implements _$$_WithoutTaxPriceCopyWith<$Res> {
  __$$_WithoutTaxPriceCopyWithImpl(
      _$_WithoutTaxPrice _value, $Res Function(_$_WithoutTaxPrice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_WithoutTaxPrice(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_WithoutTaxPrice extends _WithoutTaxPrice {
  const _$_WithoutTaxPrice({required this.value}) : super._();

  @override
  final double value;

  @override
  String toString() {
    return 'WithoutTaxPrice(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WithoutTaxPrice &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WithoutTaxPriceCopyWith<_$_WithoutTaxPrice> get copyWith =>
      __$$_WithoutTaxPriceCopyWithImpl<_$_WithoutTaxPrice>(this, _$identity);
}

abstract class _WithoutTaxPrice extends WithoutTaxPrice {
  const factory _WithoutTaxPrice({required final double value}) =
      _$_WithoutTaxPrice;
  const _WithoutTaxPrice._() : super._();

  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$_WithoutTaxPriceCopyWith<_$_WithoutTaxPrice> get copyWith =>
      throw _privateConstructorUsedError;
}
