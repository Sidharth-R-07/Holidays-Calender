import 'package:freezed_annotation/freezed_annotation.dart';
part 'holiday_states.freezed.dart';

@freezed
class HolidayState with _$HolidayState {
  const factory HolidayState.loading() = _Loading;
  const factory HolidayState.data(List<dynamic> holidays) = _Data;
  const factory HolidayState.error(String message) = _Error;
}
