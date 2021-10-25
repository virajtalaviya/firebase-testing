import 'dart:convert';

import 'package:firebase/Model/countryModel.dart';
import 'package:http/http.dart' as http;

WelcomeCountry welcomeFromJson(String str) => WelcomeCountry.fromJson(json.decode(str));

String welcomeToJson(WelcomeCountry data) => json.encode(data.toJson());

Future<WelcomeCountry> getDataOfCountry () async {
  String url = "https://api.covid19api.com/summary";
  final response = await http.get(Uri.parse(url));
  if(response.statusCode==200){
    return welcomeFromJson(response.body);

  }
  else throw Exception("Something went wrong");
}