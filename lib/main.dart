import 'package:flutter/material.dart';
import 'package:links_landing_page/links_landing_page/links_landing_page.dart';
import 'package:links_landing_page/not_found_page.dart';
import 'package:links_landing_page/settings_page/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LinksLandingPage(),
        '/settings': (context) => SettingsPage(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => NotFoundPage());
      },
    );
  }
}
