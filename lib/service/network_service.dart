import 'dart:convert';

import 'package:http/http.dart';
import 'package:http_interceptor/http/intercepted_http.dart';

import 'intersepter_service.dart';


class NetvorServis {

  
  static const Map<String,String> headers = {"Content-Type":"application/json"};
  static const String baseUrlDummyJson = "dummyjson.com";
  static const String apiUser = "/auth/login";
  static const String apiProductdDummy = "/products";


  static const String baseUrlMok = "65cafe0defec34d9ed8681e1.mockapi.io";
  static const String apiMok = "/product";
  static const String apiMokuser = "/user";


  static final http = InterceptedHttp.build(interceptors: [
    InterceptorService()
  ]);

  static Future<String?> postData(String baseUrl, String api, Map<String,dynamic> body)async{
    Uri uri = Uri.https(baseUrl,api);
    Response response = await http.post(uri,body: jsonEncode(body), headers:headers);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }
      return null;
  }
   static Future<String?> getData(String baseUrl ,String api) async {
    final url = Uri.https(baseUrl, api);
    Response response = await http.get(url);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      return null;
    }
  }

  static Future<String?> delateDate(String baseUrl, String api,  String id)async{
    final url = Uri.https(baseUrl, "$api/$id");
    Response response = await delete(url);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }else{
      return null;
    }
  }

  static Future<String?> updateDate(String api, String baseUrl, String id, Map<String,dynamic> body) async{
    final url = Uri.https(baseUrl, '$api/$id');
    Response response = await put(url, headers:{'Content-Type':'application/json'}, body: jsonEncode(body));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }else{
      return null;
    }
  }

}
