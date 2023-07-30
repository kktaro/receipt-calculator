import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:receipt_calculator/domain/value/ammount.dart';
import 'package:receipt_calculator/domain/value/item.dart';
import 'package:receipt_calculator/domain/value/payment.dart';
import 'package:receipt_calculator/domain/value/tax.dart';
import 'package:receipt_calculator/feature/receipt/receipt_notifier.dart';

void main() {
  late ReceiptNotifier receiptNotifier;

  setUp(() {
    receiptNotifier = ReceiptNotifier();
  });

  void checkInit() {
    final items = receiptNotifier.debugState.items;
    final total = receiptNotifier.debugState.total;

    expect(items.length, 0);
    expect(total, const Ammount(value: 0));
  }

  void checkState(List<Item> items, Ammount total) {
    final stateItems = receiptNotifier.debugState.items;
    final stateTotal = receiptNotifier.debugState.total;

    items.forEachIndexed((index, element) {
      expect(element, stateItems[index]);
    });
    expect(total, stateTotal);
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
        receiptNotifier.addItem(newItem);
        checkState([newItem], const Ammount(value: 110));
      });

      test('複数個の商品が追加できること', () {
        checkInit();

        final newItems = [
          createItem('test1', 100, Tax.nomal),
          createItem('test2', 200, Tax.reduced),
          createItem('test3', 300, Tax.nomal),
        ];
        newItems.forEach(receiptNotifier.addItem);
        checkState(newItems, const Ammount(value: 656));
      });

      test('goca支払い時の計算が正しく行えること', () {
        checkInit();

        receiptNotifier.changePayment(Payment.goca);
        final newItem = createItem('test', 1000, Tax.reduced);
        receiptNotifier.addItem(newItem);
        // 1000 * 1.08 * 0.98
        checkState([newItem], const Ammount(value: 1058.4));
      });
    });
  });

  group('editItem', () {
    final item1 = createItem('test1', 100, Tax.nomal);
    final item2 = createItem('test2', 200, Tax.reduced);
    final item3 = createItem('test3', 300, Tax.nomal);
    void addTestItems() {
      [item1, item2, item3].forEach(receiptNotifier.addItem);
    }

    group('正常系', () {
      test('指定した商品の情報が変更されていること', () {
        checkInit();
        addTestItems();

        final newItem = createItem('new', 1000, Tax.nomal);
        receiptNotifier.editItem(1, newItem);

        checkState([item1, newItem, item3], const Ammount(value: 1540));
      });

      test('goca支払い時の計算が正しく行えること', () {
        checkInit();
        addTestItems();

        final newItem = createItem('new', 1000, Tax.nomal);
        receiptNotifier.editItem(1, newItem);
        receiptNotifier.changePayment(Payment.goca);

        checkState([item1, newItem, item3], const Ammount(value: 1509.2));
      });
    });
  });
}
