import 'package:freezed_annotation/freezed_annotation.dart';

import '../extension/double_extension.dart';
import 'ammount.dart';
import 'tax.dart';

part 'generated/item.freezed.dart';

@freezed
class Item with _$Item {
  const factory Item({
    required ItemName name,
    required WithoutTaxPrice price,
    required Tax tax,
  }) = _Item;
  const Item._();

  /// 税込価格を取得する
  Ammount getAmmount() => Ammount(
        value: (price.value + price.value * tax.rate).roundAsSignificant(),
      );
}

@freezed
class ItemName with _$ItemName {
  const factory ItemName({
    required String value,
  }) = _ItemName;
  const ItemName._();
}

@freezed
class WithoutTaxPrice with _$WithoutTaxPrice {
  const factory WithoutTaxPrice({
    required double value,
  }) = _WithoutTaxPrice;
  const WithoutTaxPrice._();
}
