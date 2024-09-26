import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:holidays_calender/providers/holiday_provider.dart';

class ShowHolidayBottomSheet extends ConsumerWidget {
  final DateTime selectedDate;
  const ShowHolidayBottomSheet({super.key, required this.selectedDate});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final holidayState = ref.watch(holidayProvider);
    return Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Holidays on ${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const CloseButton()
              ],
            ),
            const Gap(20),
            holidayState.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              data: (holidays) {
                if (holidays.isEmpty) {
                  return const SizedBox(
                    height: 200,
                    child: Center(
                      child: Text(
                        'No holidays found for the selected day!',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  );
                }
                return SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: holidays.length,
                    itemBuilder: (context, index) {
                      final holiday = holidays[index];
                      return ListTile(
                        title: Text(
                          holiday['name'],
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        subtitle: Text(holiday['date']),
                      );
                    },
                  ),
                );
              },
              error: (message) => Center(child: Text(message)),
            ),
          ],
        ));
  }
}
