import 'package:flutter/material.dart';
import 'package:news_app_ui/model/article.dart';
import 'package:news_app_ui/widgets/custom_tag.dart';

import '../widgets/bottom_nav.dart';
import '../widgets/home_image_container.dart';
import '../widgets/news_of_the_day.dart';

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
          NewsOfTheDay(),
          _BreakingNews(articles: Article.articles),
        ],
      ),
      bottomNavigationBar: BottomNavBar(index: 0),
    );
  }
}

class _BreakingNews extends StatelessWidget {
  final List<Article> articles;
  const _BreakingNews({Key? key, required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "News of the Day",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                "More",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 125,
          child: ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    HomeImageContainer(
                        width: MediaQuery.of(context).size.width * 0.5,
                        imageUrl: articles[index].imageUrl),
                  ],
                ),
              );
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
