import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/extension/ammounts_extension.dart';
import '../../domain/value/ammount.dart';
import '../../domain/value/item.dart';
import '../../domain/value/payment.dart';
import '../../domain/value/tax.dart';
import 'receipt_state.dart';

part 'generated/receipt.g.dart';

@riverpod
class Receipt extends _$Receipt {
  @override
  ReceiptState build() {
    return const ReceiptState(
      items: [],
      payment: Payment.goca,
      total: Ammount(value: 0),
    );
  }

  void addItem(Item item) {
    final resultItems = [...state.items, item];
    final total = resultItems.sumAmmount(state.payment);

    state = state.copyWith(items: resultItems, total: total);
  }

  void addInitialItem() {
    addItem(Item.initial());
  }

  void editItem(int targetIndex, Item item) {
    final resultItems = state.items
        .mapIndexed((index, element) => index == targetIndex ? item : element)
        .toList();
    final total = resultItems.sumAmmount(state.payment);

    state = state.copyWith(items: resultItems, total: total);
  }

  void editName(int targetIndex, ItemName name) {
    final targetItem = state.items[targetIndex];
    editItem(targetIndex, targetItem.copyWith(name: name));
  }

  void editPrice(int targetIndex, WithoutTaxPrice price) {
    final targetItem = state.items[targetIndex];
    editItem(targetIndex, targetItem.copyWith(price: price));
  }

  void toggleTax(int targetIndex) {
    final targetItem = state.items[targetIndex];
    final currentTax = targetItem.tax;
    editItem(
      targetIndex,
      targetItem.copyWith(
        tax: currentTax == Tax.nomal ? Tax.reduced : Tax.nomal,
      ),
    );
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
