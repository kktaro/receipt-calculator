import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/ammount.freezed.dart';

@freezed
class Ammount with _$Ammount {
  const factory Ammount({
    required double value,
  }) = _Ammount;
  const Ammount._();
}
