import 'package:flutter/material.dart';

String imageSelect(String name) {
  if (name == "탁상 그라인더" || name == "bench grinder") {
    return "assets/image/bench.jpg";
  } else if (name == "전동 드릴" || name == "electric drill") {
    return "assets/image/elect_driver.jpg";
  } else if (name == "앵글 그라인더" || name == "Angle Grinder") {
    return "assets/image/angg.jpg";
  } else if (name == "직소" || name == "Jigsaw") {
    return "assets/image/jigsaw.jpg";
  } else if (name == "납댐기" || name == "soldering iron") {
    return "assets/image/hako.jpg";
  } else if (name == "스트립퍼" || name == "Wire Stripper") {
    return "assets/image/strip.jpg";
  } else if (name == "철공용줄" || name == "Iron File") {
    return "assets/image/jull.jpg";
  } else if (name == "목수자" || name == "Carpenters Ruler") {
    return "assets/image/ruler.jpg";
  } else if (name == "베터리들" || name == "Lipo Batteries") {
    return "assets/image/베터리.jpg";
  } else if (name == "파워 서플라이어" || name == "DC power supplier") {
    return "assets/image/powersup.jpg";
  } else if (name == "콤프레샤" || name == "compressor") {
    return "assets/image/comp.jpg";
  } else if (name == "오실로 스코프" || name == "oscilloscope") {
    return "assets/image/ocilo.jpg";
  } else {
    return "assets/image/batcha.jpg";
  }
}
