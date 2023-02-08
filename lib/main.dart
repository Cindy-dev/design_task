import 'package:faramove_test/home/views/home_page.dart';
import 'package:faramove_test/podcast/views/podcast_screen.dart';
import 'package:faramove_test/navigation_bar/views/root_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: RootScreen());
  }
}
