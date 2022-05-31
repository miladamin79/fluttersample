import 'dart:convert';

import 'package:apitest/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
