import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/models/source_modl.dart';
import 'package:news_app/pages/home/widgets/constants/constants.dart';

class ApiManger {
  Future<SourceModel> fetchSources(String category) async {
    var query = {
      "apiKey": Constants.apikey,
      "Category": Category,
    };
    final response = await http.get(
      Uri.http(
        Constants.baseURL,
        "/v2/top-headlines/sources",
        query,
      ),
    );

    if (response.statusCode == 200 &&
        jsonDecode(response.body)["status"] == "ok") {
      return SourceModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Failed to load soures");
    }
  }
}
