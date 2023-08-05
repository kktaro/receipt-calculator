// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../receipt_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReceiptState {
  List<Item> get items => throw _privateConstructorUsedError;
  Payment get payment => throw _privateConstructorUsedError;
  Ammount get total => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReceiptStateCopyWith<ReceiptState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptStateCopyWith<$Res> {
  factory $ReceiptStateCopyWith(
          ReceiptState value, $Res Function(ReceiptState) then) =
      _$ReceiptStateCopyWithImpl<$Res, ReceiptState>;
  @useResult
  $Res call({List<Item> items, Payment payment, Ammount total});

  $AmmountCopyWith<$Res> get total;
}

/// @nodoc
class _$ReceiptStateCopyWithImpl<$Res, $Val extends ReceiptState>
    implements $ReceiptStateCopyWith<$Res> {
  _$ReceiptStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? payment = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Ammount,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AmmountCopyWith<$Res> get total {
    return $AmmountCopyWith<$Res>(_value.total, (value) {
      return _then(_value.copyWith(total: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReceiptStateCopyWith<$Res>
    implements $ReceiptStateCopyWith<$Res> {
  factory _$$_ReceiptStateCopyWith(
          _$_ReceiptState value, $Res Function(_$_ReceiptState) then) =
      __$$_ReceiptStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Item> items, Payment payment, Ammount total});

  @override
  $AmmountCopyWith<$Res> get total;
}

/// @nodoc
class __$$_ReceiptStateCopyWithImpl<$Res>
    extends _$ReceiptStateCopyWithImpl<$Res, _$_ReceiptState>
    implements _$$_ReceiptStateCopyWith<$Res> {
  __$$_ReceiptStateCopyWithImpl(
      _$_ReceiptState _value, $Res Function(_$_ReceiptState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? payment = null,
    Object? total = null,
  }) {
    return _then(_$_ReceiptState(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Ammount,
    ));
  }
}

/// @nodoc

class _$_ReceiptState extends _ReceiptState {
  const _$_ReceiptState(
      {required final List<Item> items,
      required this.payment,
      required this.total})
      : _items = items,
        super._();

  final List<Item> _items;
  @override
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final Payment payment;
  @override
  final Ammount total;

  @override
  String toString() {
    return 'ReceiptState(items: $items, payment: $payment, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReceiptState &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), payment, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReceiptStateCopyWith<_$_ReceiptState> get copyWith =>
      __$$_ReceiptStateCopyWithImpl<_$_ReceiptState>(this, _$identity);
}

abstract class _ReceiptState extends ReceiptState {
  const factory _ReceiptState(
      {required final List<Item> items,
      required final Payment payment,
      required final Ammount total}) = _$_ReceiptState;
  const _ReceiptState._() : super._();

  @override
  List<Item> get items;
  @override
  Payment get payment;
  @override
  Ammount get total;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiptStateCopyWith<_$_ReceiptState> get copyWith =>
      throw _privateConstructorUsedError;
}
