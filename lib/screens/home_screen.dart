import 'dart:convert';

import 'package:apitest/data/model/user.dart';
import 'package:apitest/screens/user_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String title = 'loading...';
  User? user;
  @override
  void initState() {
    // TODO: implement initState
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 25.0),
            ),
            ElevatedButton(
              onPressed: () {
                if (user == null) {
                  return;
                }
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => UserProfileScreen(
                              user: user,
                            ))));
              },
              child: Text(
                'click to get data',
                style: TextStyle(fontSize: 28),
              ),
            ),
          ],
        ),
      )),
    );
  }

  void getData() async {
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/users/1');
    Response response = await get(uri);
    int id = jsonDecode(response.body)['id'];
    String name = jsonDecode(response.body)['name'];
    String username = jsonDecode(response.body)['username'];
    String city = jsonDecode(response.body)['address']['city'];
    String phone = jsonDecode(response.body)['phone'];

    user = User(id, name, username, city, phone);
  }
}
