import 'package:flutter/material.dart';

import '../widgets/bottom_nav.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

static const routeName = "/discover";

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(),
      bottomNavigationBar: BottomNavBar(index:1),
   ); 
  }
}