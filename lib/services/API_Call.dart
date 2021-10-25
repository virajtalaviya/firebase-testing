import 'dart:convert';

import 'package:firebase/Model/userId.dart';
import 'package:http/http.dart' as http;

List<Welcome> welcomeFromJson(String str) =>
    List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

Future<List<Welcome>> fetchDataFromInternet() async {
  final String url = 'https://jsonplaceholder.typicode.com/posts';
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    return welcomeFromJson(response.body);
  } else
    throw Exception();
}
// class ServiceFunction {
//   final String url = 'https://jsonplaceholder.typicode.com/posts';
//
//   Future<List<Welcome>> fetchDataFromInternet() async {
//     final response = await http.get(Uri.parse(url));
//     List responseJson = json.decode(response.body.toString());
//     if (response.statusCode == 200) {
//       return Welcome.fromJson(JsonDecoder(responseJson));
//     }
//     // List<Welcome> userList = createUserList(responseJson);
//     // return userList;
//   }

// List<Welcome> createUserList(List data){
//   List<Welcome> list = [];
//
//   for(int i = 0; i < data.length;i++){
//     int title = data[i]["id"];
//     Welcome user = new Welcome(id: title);
//     list.add(user);
//   }
//   return list;
// }
// }

// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);
//
// import 'dart:convert';
// Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));
// String welcomeToJson(Welcome data) => json.encode(data.toJson());
// class Welcome {
//   Welcome({
//     this.userId,
//     this.id,
//     this.title,
//     this.body,
//   });
//   int userId;
//   int id;
//   String title;
//   String body;
//   factory Welcome.fromJson(Map<String, dynamic> json) =>
//       Welcome(
//         userId: json["userId"],
//         id: json["id"],
//         title: json["title"],
//         body: json["body"],
//       );
//   Map<String, dynamic> toJson() =>
//       {
//         "userId": userId,
//         "id": id,
//         "title": title,
//         "body": body,
//       };
// }
//+++++++++++++++++++++++++++++
// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);
