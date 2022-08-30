import 'package:flutter/material.dart';
import 'package:news_app_ui/model/article.dart';
import 'package:news_app_ui/widgets/custom_tag.dart';

import '../widgets/bottom_nav.dart';
import '../widgets/home_image_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.white,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          HomeImageContainer(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.45,
            imageUrl: Article.articles[1].imageUrl,
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomTag(
                bgColor: Colors.grey.withOpacity(0.4),
                children: [
                  Text("News of the Day"),
                ],
              )
            ]),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(index: 0),
    );
  }
}
