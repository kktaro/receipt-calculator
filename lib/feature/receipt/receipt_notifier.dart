import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/extension/ammounts_extension.dart';
import '../../domain/value/ammount.dart';
import '../../domain/value/item.dart';
import '../../domain/value/payment.dart';
import 'receipt_state.dart';

final receiptNotifierProvider =
    StateNotifierProvider<ReceiptNotifier, ReceiptState>((ref) {
  return ReceiptNotifier();
});

class ReceiptNotifier extends StateNotifier<ReceiptState> {
  ReceiptNotifier()
      : super(
          const ReceiptState(
            items: [],
            payment: Payment.other,
            total: Ammount(value: 0),
          ),
        );

  void addItem(Item item) {
    final resultItems = [...state.items, item];
    final total = resultItems.sumAmmount(state.payment);

    state = state.copyWith(items: resultItems, total: total);
  }

  void editItem(int targetIndex, Item item) {
    final resultItems = state.items
        .mapIndexed((index, element) => index == targetIndex ? item : element)
        .toList();
    final total = resultItems.sumAmmount(state.payment);

    state = state.copyWith(items: resultItems, total: total);
  }

  void changePayment(Payment payment) {
    final items = state.items;
    final total = items.sumAmmount(payment);

    state = state.copyWith(payment: payment, total: total);
  }
}

extension ItemExtension on List<Item> {
  Ammount sumAmmount(Payment payment) =>
      map((e) => e.getAmmount()).toList().calcTotal(payment);
}
