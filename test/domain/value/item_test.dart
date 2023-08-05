import 'package:flutter_test/flutter_test.dart';
import 'package:receipt_calculator/domain/value/ammount.dart';
import 'package:receipt_calculator/domain/value/item.dart';
import 'package:receipt_calculator/domain/value/tax.dart';

void main() {
  group('getAmmount', () {
    group('通常税率', () {
      Item createItem(double price) => Item(
            name: const ItemName(value: 'test'),
            price: WithoutTaxPrice(value: price),
            tax: Tax.nomal,
          );

      test('整数の値段の価格が正常に取得できること', () {
        final item = createItem(100);
        expect(item.getAmmount(), const Ammount(value: 110));
      });

      test('小数の値段の価格が正常に取得できること', () {
        final item = createItem(100.1);
        expect(item.getAmmount(), const Ammount(value: 110.11));
      });
    });

    group('軽減税率', () {
      Item createItem(double price) => Item(
            name: const ItemName(value: 'test'),
            price: WithoutTaxPrice(value: price),
            tax: Tax.reduced,
          );

      test('整数の値段の価格が正常に取得できること', () {
        final item = createItem(100);
        expect(item.getAmmount(), const Ammount(value: 108));
      });

      test('小数の値段の価格が正常に取得できること', () {
        final item = createItem(100.1);
        expect(item.getAmmount(), const Ammount(value: 108.108));
      });
    });
  });
}
