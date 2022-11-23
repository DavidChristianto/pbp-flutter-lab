import 'package:flutter/material.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/data.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/mywatchlist.dart';
import 'dart:convert';


// List<Model> FromJson(String str) => List<Model>.from(json.decode(str).map((x) => Model.fromJson(x)));
//
// String todoToJson(List<Model> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
class Model {
  Model({
    required this.title,
    required this.release_date_of_the_film,
    required this.rating_film,
    required this.status,
    required this.reviews,
  });

  String title;
  String release_date_of_the_film;
  int rating_film;
  String status;
  String reviews;

  factory Model.fromJson(Map<String, dynamic> myJson) => Model(
      title: myJson["fields"]["title"],
      release_date_of_the_film: myJson["fields"]["release_date"],
      rating_film: myJson["fields"]["rating"],
      status: myJson["fields"]["watched"]=="YES"?"watched":"not watched",
      reviews: myJson["fields"]["review"]
  );

  Map<String, dynamic> toJson() => {
    "Title": title,
    "Release Date": release_date_of_the_film,
    "Rating": rating_film,
    "Status": status,
    "Review": reviews,
  };
}
