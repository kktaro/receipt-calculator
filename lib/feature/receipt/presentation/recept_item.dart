import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/extension/double_extension.dart';
import '../../../domain/value/item.dart';

final currentItem = Provider<Item>((ref) => throw UnimplementedError());

class ReceiptItem extends HookConsumerWidget {
  const ReceiptItem({
    super.key,
    required this.onChangeName,
    required this.onChangePrice,
    required this.onToggleTax,
  });

  final void Function(ItemName) onChangeName;
  final void Function(WithoutTaxPrice) onChangePrice;
  final void Function() onToggleTax;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = ref.watch(currentItem);
    final nameController = useTextEditingController(text: item.name.value);
    final priceController =
        useTextEditingController(text: item.price.value.toStringOrEmpty());

    return ListTile(
      title: TextField(
        decoration: const InputDecoration(
          hintText: '商品名(任意)',
        ),
        onChanged: (value) => onChangeName(ItemName(value: value)),
        controller: nameController,
      ),
      subtitle: Column(
        children: [
          const SizedBox(height: 8),
          Row(
            children: [
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: '金額',
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  onChanged: (value) {
                    final input = value.isEmpty ? '0' : value;
                    onChangePrice(WithoutTaxPrice(value: double.parse(input)));
                  },
                  controller: priceController,
                ),
              ),
              TextButton(
                onPressed: onToggleTax,
                child: Text(item.tax.displayName),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
