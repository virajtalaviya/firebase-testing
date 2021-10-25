class Welcome {
  Welcome({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  int? userId;
  int? id;
  String? title;
  String? body;

  factory Welcome.fromJson(Map<String, dynamic> json) =>
      Welcome(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() =>
      {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}


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


//class Welcome {
//     Welcome({
//         this.userId,
//         this.id,
//         this.title,
//         this.body,
//     });
//
//     int userId;
//     int id;
//     String title;
//     String body;
//
//     factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
//         userId: json["userId"],
//         id: json["id"],
//         title: json["title"],
//         body: json["body"],
//     );
//
//     Map<String, dynamic> toJson() => {
//         "userId": userId,
//         "id": id,
//         "title": title,
//         "body": body,
//     };
// }
