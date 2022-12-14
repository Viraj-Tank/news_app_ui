import 'package:flutter/material.dart';
import 'package:news_app_ui/screens/profile_screen.dart';
import 'package:news_app_ui/screens/discover_screen.dart';
import 'package:news_app_ui/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        ArticleScreen.routeName: (context) => const ArticleScreen(),
        DiscoverScreen.routeName: (context) => const DiscoverScreen(),
      },
    );
  }
}
