import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:popp/models/memo.dart';

class MemoService {
  static Future<List<MemoModel>> fetchMemos() async {
    final url = Uri.http('10.0.2.2:3000', '/memo/all');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final decodedResponse = jsonDecode(response.body) as List<dynamic>;
      inspect(decodedResponse);
      return decodedResponse.map((e) => MemoModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load memos');
    }
  }
}
