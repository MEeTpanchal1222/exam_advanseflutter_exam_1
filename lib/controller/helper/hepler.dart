import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../modal/modal.dart';

Future<List<Country>> fetchCountries() async {
  final response = await http.get(Uri.parse('https://restcountries.com/v3.1/all?_gl=1*g8ha7z*_ga*MTE2NTkzNjc1Ny4xNzE5NTYzMjU1*_ga_ZCYG64C7PL*MTcxOTU2NzA2MC4yLjEuMTcxOTU2NzA5NC4wLjAuMA..'));

  if (response.statusCode == 200) {
    List<dynamic> jsonList = json.decode(response.body);
    return Country.fromJsonList(jsonList);
  } else {
    throw Exception('Failed to load countries');
  }
}