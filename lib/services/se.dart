import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/m1.dart';

class wh {
  Future<m1> getcetyname({required String c}) async {
    String apikey = "HPB52TX2A8W6DPZCWUBQYHK86&content";

    Uri url = Uri.parse(
        "https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/$c?unitGroup=metric&key=HPB52TX2A8W6DPZCWUBQYHK86&contentType=json");

    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
    m1 m = m1.get(data);
    print(m.temp);
    return m;
  }
}
