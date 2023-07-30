import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/value/ammount.dart';
import '../../domain/value/item.dart';
import '../../domain/value/payment.dart';

part 'generated/receipt_state.freezed.dart';

@freezed
class ReceiptState with _$ReceiptState {
  const factory ReceiptState({
    required List<Item> items,
    required Payment payment,
    required Ammount total,
  }) = _ReceiptState;
  const ReceiptState._();
}
