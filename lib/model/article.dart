import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  Article(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.body,
      required this.author,
      required this.authorImageUrl,
      required this.category,
      required this.imageUrl,
      required this.views,
      required this.createdAt});

  static List<Article> articles = [
    Article(
      id: "1",
      title: "",
      subtitle: "",
      body: "",
      author: "Robert Cook",
      authorImageUrl: "https://static.thenounproject.com/png/363640-200.png",
      category: "Health",
      imageUrl:
          "https://images.unsplash.com/photo-1457369804613-52c61a468e7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80",
      views: 1234,
      createdAt: DateTime.now().subtract(const Duration(hours: 4)),
    ),
    Article(
      id: "2",
      title: "",
      subtitle: "",
      body: "",
      author: "Hannah Berk",
      authorImageUrl: "https://static.thenounproject.com/png/363640-200.png",
      category: "Art",
      imageUrl:
          "https://images.unsplash.com/photo-1476242906366-d8eb64c2f661?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2669&q=80",
      views: 3785,
      createdAt: DateTime.now().subtract(const Duration(hours: 4)),
    ),
    Article(
      id: "3",
      title: "",
      subtitle: "",
      body: "",
      author: "Anthony Simpton II",
      authorImageUrl: "https://static.thenounproject.com/png/363640-200.png",
      category: "Entertainment",
      imageUrl:
          "https://images.unsplash.com/photo-1585241936939-be4099591252?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80",
      views: 964,
      createdAt: DateTime.now().subtract(const Duration(hours: 4)),
    ),
    Article(
      id: "4",
      title: "",
      subtitle: "",
      body: "",
      author: "Sr. Divoty Jin",
      authorImageUrl: "https://static.thenounproject.com/png/363640-200.png",
      category: "Social",
      imageUrl:
          "https://images.unsplash.com/photo-1580130037666-564e0f29cbae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1738&q=80",
      views: 17800,
      createdAt: DateTime.now().subtract(const Duration(hours: 4)),
    ),
Article(
      id: "5",
      title: "",
      subtitle: "",
      body: "",
      author: "Rebecca Pist",
      authorImageUrl: "https://static.thenounproject.com/png/363640-200.png",
      category: "Politics",
      imageUrl:
          "https://images.unsplash.com/photo-1623039405147-547794f92e9e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1052&q=80",
      views: 478,
      createdAt: DateTime.now().subtract(const Duration(hours: 4)),
    ),
  ];

  @override
  List<Object?> get props => [
        id,
        title,
        subtitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        views,
        createdAt
      ];
}
