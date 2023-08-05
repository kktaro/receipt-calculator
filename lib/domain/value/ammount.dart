import 'package:freezed_annotation/freezed_annotation.dart';

import '../extension/double_extension.dart';

part 'generated/ammount.freezed.dart';

@freezed
class Ammount with _$Ammount {
  const factory Ammount({
    required double value,
  }) = _Ammount;
  const Ammount._();

  Ammount add(Ammount ammount) =>
      Ammount(value: (value + ammount.value).roundAsSignificant());
}
