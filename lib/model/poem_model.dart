// import 'dart:convert';
//
// PoemModel poemModelJson(String str) =>
//     PoemModel.fromJson(json.decode(str));
//
// String poemModelToJSon(PoemModel data) => json.encode(data.toJson());
//
// class PoemModel {
//   // int id;
//   String title;
//   String poem;
//   // String theme;
//   // String emotion;
//
//   PoemModel({required this.title, required this.poem});
//
//   factory PoemModel.fromJson(Map<String, dynamic> json) => PoemModel(
//       poem: json["poem"], title: json["title"]);
//
//   Map<String, dynamic> toJson() => {
//     "poem": poem,
//     "title": title,
//   };
//
//   String get title => title;
//
//   String get poem => poem;
// }
