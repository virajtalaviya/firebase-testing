import 'package:firebase/Model/userId.dart';
import 'package:firebase/screens/second_page.dart';
import 'package:firebase/services/API_Call.dart';
import 'package:flutter/material.dart';

class APIScreen extends StatefulWidget {
  APIScreen({Key? key}) : super(key: key);

  @override
  _APIScreenState createState() => _APIScreenState();
}

class _APIScreenState extends State<APIScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 700,
            width: double.infinity,
            color: Colors.amberAccent,
            child: FutureBuilder<List<Welcome>>(
              future: fetchDataFromInternet(),
              builder: (context, snapshot) {
                if(snapshot.hasData){
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: snapshot.data?.length ?? 0,
                    itemBuilder: (context, index) => Center(
                      child: Column(
                        children: [
                          Text(snapshot.data![index].body.toString()),
                        ],
                      ),
                    ),
                  );
                }
               else if(snapshot.hasError){
                 return Text("Something went wrong");
                }
               else return Center(child: CircularProgressIndicator(),);
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Covid(),
                ),
              );
            },
            icon: Icon(Icons.forward),
          ),
        ],
      ),
    );
  }
}

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//
// class Welcome {
//   int? userid;
//   int? id;
//   String? title;
//   String? body;
//
//   Welcome({
//     this.userid,
//     this.id,
//     this.title,
//     this.body,
//   });
//
//   factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
//         userid: json["userId"],
//         id: json["id"],
//         title: json["title"],
//         body: json["body"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "userId": userid,
//         "id": id,
//         "title": title,
//         "body": body,
//       };
// }
//
// //++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//
// //++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//
// final String url = 'https://jsonplaceholder.typicode.com/posts';
//
// Future<List<Welcome>> fetchDataFromInternet() async {
//   final response = await http.get(Uri.parse(url));
//   List responseJson = json.decode(response.body.toString());
//   List<Welcome> userList = createUserList(responseJson);
//   return userList;
// }
//
// List<Welcome> createUserList(List data) {
//   List<Welcome> list = [];
//
//   for (int i = 0; i < data.length; i++) {
//     int title = data[i]["id"];
//     Welcome user = new Welcome(id: title);
//     list.add(user);
//   }
//   return list;
// }
///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// List<Welcome> welcomeFromJson(String str) =>
//     List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));
// String welcomeToJson(List<Welcome> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
//
//
//
// Future <List<Welcome>> fetchDataFromInternet () async {
//   final String url = 'https://jsonplaceholder.typicode.com/posts';
//   final response = await http.get(Uri.parse(url));
//   if(response.statusCode==200){
//     return welcomeFromJson(response.body);
//   }
//   else throw Exception();
// }

// //++++++++++++++++++++++++++++++++++++++++++++++++++++++++
