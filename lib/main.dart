import 'package:flutter/material.dart';
import 'package:instory_remake/utils/colors.dart';

void main() => runApp(StoriesApp());

class StoriesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stories',
      theme: ThemeData(backgroundColor: background,
      scaffoldBackgroundColor: background),
      home: Center(),
    );
  }
}