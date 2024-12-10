import 'package:flutter/material.dart';
import 'package:newsapp/category/ListViewIgit.dart';
import 'package:newsapp/category/NewsListView.dart';
import 'package:newsapp/category/news_list_view_builder.dart';

class Categoryview extends StatelessWidget {
  const Categoryview({super.key, required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: NewListViewBuilder(category: category,));
  }
}