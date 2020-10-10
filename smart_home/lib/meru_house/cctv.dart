import 'package:smart_home/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/main.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';
import '../http_service/quote.dart';
import '../http_service/api_json_placeholder.dart';
import '../http_service/data/user.dart';
import 'dart:convert';

class CctvScreen extends StatefulWidget {
  @override
  _CctvScreenState createState() => _CctvScreenState();
}

class _CctvScreenState extends State<CctvScreen> {
  @override
  void initState() {
    super.initState();
    _getUsers();
  }


  List<Quote> quotes = [
    Quote(author: 'oscar', text: 'lotr fellowship of the ring'),
    Quote(author: 'tolkien', text: 'lotr 2 tower'),
    Quote(author: 'diah', text: 'lotr return of the king'),
  ];

  var users = new List<User>();


  _getUsers() {
    API.getUsers2().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        users = list.map((model) => User.fromJson(model)).toList();
      });
    });
  }


  @override
  build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CCTV"),
        ),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            var website = users[index].website;
            var phone = users[index].phone;

            return ListTile(
                title: Text(users[index].name),
                subtitle: Text('Contact => $website - $phone'),
            );
          },
        ));
  }







}

