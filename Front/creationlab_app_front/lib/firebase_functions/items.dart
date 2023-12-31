import 'package:flutter/material.dart';

class Items {
  final String engname;
  final String korname;
  // final int age;

  Items({
    required this.engname,
    required this.korname,
    // required this.age,
  });

  factory Items.fromJson(Map<String, dynamic> json) {
    return Items(
      engname: json["engname"],
      korname: json["korname"],
      // age: json["name"],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      "engname": engname,
      "korname": korname,
      // "name": age,
    };
  }
}
