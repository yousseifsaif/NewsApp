import 'package:flutter/material.dart';
import 'package:newsapp/category/newsLIst.dart';
import 'package:newsapp/models/articleModel.dart';

class Newslistview extends StatelessWidget {
  Newslistview({
    super.key, required List<Articlemodel> articles,
  });
  List<Articlemodel> articles = [];
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: articles.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 22),
        child: Newslist(articlemodel: articles[index]),
      );
    }));
  }
}
