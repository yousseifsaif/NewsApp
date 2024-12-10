import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Services/newsService.dart';
import 'package:newsapp/category/newsLIst.dart';
import 'package:newsapp/models/articleModel.dart';


class Newslistview extends StatelessWidget {
  List<Articlemodel> articles;
  @override
Newslistview({
super.key,required this.articles
});



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: Newslist(
              articlemodel: articles[index],
            ),
          );
        });
  }
}
