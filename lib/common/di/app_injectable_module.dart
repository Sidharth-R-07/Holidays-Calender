import 'package:holidays_calender/services/calender_services.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppInjectableModule {
  @lazySingleton
  HolidayService get picker => HolidayService();
}
