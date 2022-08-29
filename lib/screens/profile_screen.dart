import 'package:flutter/material.dart';

import '../widgets/bottom_nav.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({Key? key}) : super(key: key);

static const routeName = "/article";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavBar(index:2),
    );
  }
}