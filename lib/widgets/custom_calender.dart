import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:holidays_calender/providers/holiday_provider.dart';
import 'package:holidays_calender/widgets/show_holiday_bottom_sheet.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCalender extends ConsumerStatefulWidget {
  const CustomCalender({super.key});

  @override
  ConsumerState<CustomCalender> createState() => _CustomCalenderState();
}

class _CustomCalenderState extends ConsumerState<CustomCalender> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.now(),
      lastDay: DateTime.now().add(const Duration(days: 365)),
      focusedDay: _focusedDay,
      calendarFormat: _calendarFormat,
      currentDay: DateTime.now(),
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
      ),
      calendarStyle: CalendarStyle(
        todayDecoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(8),
        ),
        cellPadding: const EdgeInsets.all(4),
        holidayDecoration: BoxDecoration(
          color: Colors.indigoAccent,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      selectedDayPredicate: (day) {
        return isSameDay(_selectedDay, day);
      },

      onDaySelected: (selectedDay, focusedDay) {
        log("ON SELECTED DAY: $selectedDay");
        if (!isSameDay(_selectedDay, selectedDay)) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
        }
        ref.read(holidayProvider.notifier).fetchHolidays(selectedDay);
        showModalBottomSheet(
          context: context,
          builder: (context) => ShowHolidayBottomSheet(
            selectedDate: selectedDay,
          ),
        );
      },
      onFormatChanged: (format) {
        if (_calendarFormat != format) {
          setState(() {
            _calendarFormat = format;
          });
        }
      },
      onPageChanged: (focusedDay) {
        _focusedDay = focusedDay;
      },
      // Optional: Customize holiday appearance
      calendarBuilders: CalendarBuilders(
        holidayBuilder: (context, day, focusedDay) {
          return Center(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.redAccent,
              ),
              padding: const EdgeInsets.all(10),
              child: Text(
                '${day.day}',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
