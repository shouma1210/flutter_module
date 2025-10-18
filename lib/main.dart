import 'package:flutter/material.dart';
import 'screens/activity_login.dart'; // ← ファイルの場所が lib/screens/activity_login.dart の場合

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ConvertedLogin(), // ← これを表示するだけ
  ));
}
