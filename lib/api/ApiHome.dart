import 'dart:convert';
import 'package:http/http.dart' show Client;
import 'package:flutter_app/utils/Constants.dart';
import 'package:flutter_app/models/HomeModel.dart';

class ApiHome {
  Client client = Client();

  Future<CumulativeCase> fetchCumulativeCase() async {
    final response = await client.get("$apiMathdro"); // Make the network call asynchronously to fetch the London weather data.

    if (response.statusCode == 200) {
      return CumulativeCase.fromJson(json.decode(response.body)); //Return decoded response
    } else {
      throw Exception('Failed to load cumulative casee');
    }
  }
}
