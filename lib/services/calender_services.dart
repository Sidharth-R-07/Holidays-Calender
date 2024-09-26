import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:holidays_calender/common/failures/failures.dart';
import 'package:holidays_calender/common/typedef/app_typedef.dart';
import 'package:http/http.dart' as http;

class HolidayService {
  final String apiKey = '55d3562f87ae4a07a14c732c647d08d5';

  Future<List<dynamic>> fetchPublicHolidaysForDay(
      String country, DateTime date) async {
    final url = Uri.parse(
        'https://holidays.abstractapi.com/v1/?api_key=$apiKey&country=$country&year=${date.year}&month=${date.month}&day=${date.day}');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load holidays for the selected day');
    }
  }

  //GET USER CURRENT COUNTRY FROM GEOLOCATION
  FutureResult<String> fetchUserCountry() async {
    final url = Uri.parse('https://geolocation-db.com/json/');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return right(json.decode(response.body)['country_code']);
    } else {
      return left(
          const MainFailure.serverFailure(errorMsg: "Failed to load country"));
    }
  }
}
