import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../receipt.dart';

class ReceiptScreen extends ConsumerWidget {
  const ReceiptScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(receiptProvider);
    final receiptNotifier = ref.watch(receiptProvider.notifier);

    return Container();
  }
}
