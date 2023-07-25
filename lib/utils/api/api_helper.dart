import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:insta_api/screens/home/model/home_model.dart';

class APIHelper{
  static APIHelper helper = APIHelper._();
  APIHelper._();

  Future<List> apiCalling() async {
    Uri uri = Uri.parse("https://api.unsplash.com/collections/?client_id=vp-88TBFQy90OWGBm5unFnNkiGL6zRd3AIRgPS-wkGg");
    var response = await http.get(uri);
    var json = jsonDecode(response.body);
    List<dynamic> dataList = json.map((e)=>InstaModel.fromJson(e)).toList();
    return dataList;
  }
}