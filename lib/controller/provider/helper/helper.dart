// helper.dart

import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../../modal/modal.dart';

class MainModalService {
  static const String _url = 'https://dummyjson.com/recipes';

  Future<MainModal> fetchMainModal() async {
    final response = await http.get(Uri.parse(_url));

    if (response.statusCode == 200) {
      return MainModal.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load recipes');
    }
  }
}
