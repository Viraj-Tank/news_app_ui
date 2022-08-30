import 'package:flutter/material.dart';
import 'package:news_app_ui/screens/discover_screen.dart';
import 'package:news_app_ui/screens/home_screen.dart';

class BottomNavBar extends StatelessWidget {
  final int index;
  const BottomNavBar({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        currentIndex: index,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, DiscoverScreen.routeName);
              },
              icon: Icon(Icons.search),
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                print('yet to implement');
              },
              icon: Icon(Icons.person),
            ),
            label: 'account',
          ),
        ]);
  }
}
