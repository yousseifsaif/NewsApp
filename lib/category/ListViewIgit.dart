import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Services/newsService.dart';
import 'package:newsapp/category/newsLIst.dart';
import 'package:newsapp/models/articleModel.dart';

class Listviewigit extends StatefulWidget {
  const Listviewigit({super.key});

  @override
  State<Listviewigit> createState() => _ListviewigitState();
}

class _ListviewigitState extends State<Listviewigit> {
  List<Articlemodel> articles = [];
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getGeneral();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: Newslist(
              articlemodel: articles[index],
            ),
          );
        },
        
      ),
      
    );
  }
}
