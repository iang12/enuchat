import 'package:flutter/material.dart';
import 'package:enuchat/homePage.dart';

void main() {
  runApp(MaterialApp(
    title: 'EnuChat',
    debugShowCheckedModeBanner:false,
    theme: ThemeData(
      primaryColor: Color(0xff055798),
      accentColor: Color(0xff2fb3ed),
    ),
    home: HomePage(),
  ));
}
