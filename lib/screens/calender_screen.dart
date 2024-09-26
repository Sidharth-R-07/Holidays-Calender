import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:holidays_calender/providers/holiday_provider.dart';
import 'package:holidays_calender/widgets/custom_calender.dart';
import 'package:holidays_calender/widgets/show_holiday_bottom_sheet.dart';

class CalenderScreen extends ConsumerWidget {
  const CalenderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      // ),
      appBar: AppBar(
        title: const Text('TableCalendar - Basics'),
      ),
      body: const CustomCalender(),
    );
  }
}
