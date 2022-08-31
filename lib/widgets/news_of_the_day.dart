import 'package:flutter/material.dart';

import '../model/article.dart';
import 'custom_tag.dart';
import 'home_image_container.dart';

class NewsOfTheDay extends StatelessWidget {
  const NewsOfTheDay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeImageContainer(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.45,
      imageUrl: Article.articles[0].imageUrl,
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTag(
            bgColor: Colors.grey.withOpacity(0.6),
            children: [
              Text(
                "News of the Day",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            Article.articles[0].title,
            maxLines: 3,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                height: 1.25),
          ),
          TextButton(
            onPressed: () {

            },
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Learn More',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white, height: 1.25),
                ),
                SizedBox(width: 8,),
                Icon(Icons.arrow_right_alt,color: Colors.white,)
              ],
            ),
          )
        ],
      ),
    );
  }
}