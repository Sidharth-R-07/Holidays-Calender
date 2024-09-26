import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:holidays_calender/services/calender_services.dart';
import 'package:holidays_calender/states/holiday_states.dart';

class HolidayNotifier extends StateNotifier<HolidayState> {
  final HolidayService _holidayService;

  HolidayNotifier(this._holidayService) : super(const HolidayState.loading());

  Future<void> fetchHolidays(DateTime date) async {
    try {
      log("FETCHING HOLIDAYS");
      state = const HolidayState.loading();

      final getCountryResult = await _holidayService.fetchUserCountry();

      getCountryResult.fold(
        (l) => throw Exception('Failed to get country'),
        (r) async {
          log("COUNTRY: $r");
          final holidays =
              await _holidayService.fetchPublicHolidaysForDay(r, date);
          log("HOLIDAYS: $holidays");
          state = HolidayState.data(holidays);
        },
      );
    } catch (e) {
      state = const HolidayState.error('Failed to load holidays');
    }
  }
}

final holidayProvider = StateNotifierProvider<HolidayNotifier, HolidayState>(
  (ref) => HolidayNotifier(HolidayService()),
);
