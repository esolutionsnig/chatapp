import 'package:chatapp/components/color.dart';
import 'package:chatapp/services/auth.dart';
import 'package:chatapp/widgets/general.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(appName),
        backgroundColor: cprimary,
        elevation: 0.0,
        actions: <Widget>[
           FlatButton.icon(
             icon: Icon(Icons.person),
             label: Text(
               "Sign Out",
               style: TextStyle(color: cwhite),
             ),
             onPressed: () async {
               await _auth.signOut();
             },
           ),
        ],
      ),
    );
  }
}