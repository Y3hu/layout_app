import 'package:flutter/material.dart';
import 'package:laayout_app/ButtonSection.dart';
import 'package:laayout_app/ImageSection.dart';
import 'package:laayout_app/TextSection.dart';
import 'package:laayout_app/TitleSection.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isFavorited = false;
  int _favoriteCount = 41;

  void _toggleFavorite(bool newValue) {
    setState(() {
      if (newValue)
        _favoriteCount -= 1;
      else
        _favoriteCount += 1;

      _isFavorited = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout Demo'),
        ),
        body: ListView(
          children: [
            ImageSection(),
            TitleSection(
                isFavorited: _isFavorited,
                favoriteCount: _favoriteCount,
                onChanged: _toggleFavorite),
            ButtonSection(),
            TextSection()
          ],
        ),
      ),
    );
  }
}
