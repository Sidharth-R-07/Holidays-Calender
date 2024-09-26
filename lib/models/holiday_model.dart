import 'package:freezed_annotation/freezed_annotation.dart';
part 'holiday_model.freezed.dart';

@freezed
class Holiday with _$Holiday {
  const factory Holiday({
    required String name,
    required String date,
  }) = _Holiday;
}
