import 'package:flutter/material.dart';
import 'package:newsapp/category/ListViewIgit.dart';

class Categoryview extends StatelessWidget {
  const Categoryview({super.key, required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CustomScrollView(slivers: [
  Listviewigit(category:category ,),
    ],),);
  }
}