import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:receipt_calculator/domain/value/ammount.dart';
import 'package:receipt_calculator/domain/value/item.dart';
import 'package:receipt_calculator/domain/value/payment.dart';
import 'package:receipt_calculator/domain/value/tax.dart';
import 'package:receipt_calculator/feature/receipt/receipt.dart';
import 'package:receipt_calculator/feature/receipt/receipt_state.dart';

import 'receipt_notifier_test.mocks.dart';

abstract class ChangeListener<T> {
  void call(T? previous, T next);
}

@GenerateMocks([ChangeListener])
void main() {
  final listener = MockChangeListener<ReceiptState>();
  late Receipt receipt;

  setUp(() {
    final container = ProviderContainer();
    addTearDown(container.dispose);
    container.listen(
      receiptProvider,
      listener,
      fireImmediately: true,
    );
    receipt = container.read(receiptProvider.notifier);
  });

  void checkInit() {
    verify(
      listener.call(
        null,
        const ReceiptState(
          items: [],
          payment: Payment.other,
          total: Ammount(value: 0),
        ),
      ),
    );
  }

  void checkState(List<Item> items, Ammount total, Payment payment) {
    verify(listener.call(
            any, ReceiptState(items: items, payment: payment, total: total)))
        .called(1);
  }

  Item createItem(String name, double price, Tax tax) => Item(
        name: ItemName(value: name),
        price: WithoutTaxPrice(value: price),
        tax: tax,
      );

  group('addItem', () {
    group('正常系', () {
      test('商品が無い状態から新規に追加できること', () {
        checkInit();

        final newItem = createItem('test', 100, Tax.nomal);
        receipt.addItem(newItem);
        checkState([newItem], const Ammount(value: 110), Payment.other);
      });

      test('複数個の商品が追加できること', () {
        checkInit();

        final newItems = [
          createItem('test1', 100, Tax.nomal),
          createItem('test2', 200, Tax.reduced),
          createItem('test3', 300, Tax.nomal),
        ];
        newItems.forEach(receipt.addItem);
        checkState(newItems, const Ammount(value: 656), Payment.other);
      });

      test('goca支払い時の計算が正しく行えること', () {
        checkInit();

        receipt.changePayment(Payment.goca);
        final newItem = createItem('test', 1000, Tax.reduced);
        receipt.addItem(newItem);
        // 1000 * 1.08 * 0.98
        checkState([newItem], const Ammount(value: 1058.4), Payment.goca);
      });
    });
  });

  group('editItem', () {
    final item1 = createItem('test1', 100, Tax.nomal);
    final item2 = createItem('test2', 200, Tax.reduced);
    final item3 = createItem('test3', 300, Tax.nomal);
    void addTestItems() {
      [item1, item2, item3].forEach(receipt.addItem);
    }

    group('正常系', () {
      test('指定した商品の情報が変更されていること', () {
        checkInit();
        addTestItems();

        final newItem = createItem('new', 1000, Tax.nomal);
        receipt.editItem(1, newItem);

        checkState(
            [item1, newItem, item3], const Ammount(value: 1540), Payment.other);
      });

      test('goca支払い時の計算が正しく行えること', () {
        checkInit();
        addTestItems();

        final newItem = createItem('new', 1000, Tax.nomal);
        receipt.editItem(1, newItem);
        receipt.changePayment(Payment.goca);

        checkState([item1, newItem, item3], const Ammount(value: 1509.2),
            Payment.goca);
      });
    });
  });
}
