import 'package:flutter/material.dart';
import '../data/model/user.dart';

class UserProfileScreen extends StatefulWidget {
  UserProfileScreen({Key? key, this.user}) : super(key: key);
  User? user;

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  User? user;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    user = widget.user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(user!.name),
      ),
    );
  }
}
