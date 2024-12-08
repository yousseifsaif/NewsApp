import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Services/newsService.dart';
import 'package:newsapp/category/NewsListView.dart';
import 'package:newsapp/models/articleModel.dart';

class Listviewigit extends StatefulWidget {
  const Listviewigit({super.key, required this.category});
  final String category;

  @override
  State<Listviewigit> createState() => _ListviewigitState();
}

class _ListviewigitState extends State<Listviewigit> {
  @override
  var Future;
  void initState() {
    Future = NewsService(Dio()).getGeneral(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Articlemodel>>(
      future: Future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Newslistview(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: SliverToBoxAdapter(
              child: Text('Oops There Was An ERROR Try Later....'),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );

    // return SliverList(
    //   delegate: SliverChildBuilderDelegate(
    //     childCount: articles.length,
    //     (context, index) {
    //       return Padding(
    //         padding: const EdgeInsets.only(bottom: 22),
    //         child: articles.isNotEmpty? Newslist(
    //           articlemodel: articles[index],
    //         ):Center(child: SliverToBoxAdapter(child: Text('Oops There Was An ERROR Try Later....'),),),
    //       );
    //     },

    //   ),

    // );
  }
}

List<Articlemodel> articles = [];
