import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:holidays_calender/widgets/custom_calender.dart';

class CalenderScreen extends ConsumerWidget {
  const CalenderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Holiday Calender'),
      ),
      body: const CustomCalender(),
    );
  }
}
