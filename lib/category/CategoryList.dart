import 'package:flutter/material.dart';
import 'package:newsapp/category/WigitCard.dart';
import 'package:newsapp/models/CategoryModel.dart';

class Categorylist extends StatelessWidget {
  const Categorylist({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(categoryName: 'General', image: 'assets/images/general.avif'),
    CategoryModel(categoryName: 'Sports', image: 'assets/images/sports.avif'),
    CategoryModel(categoryName: 'Health', image: 'assets/images/health.avif'),
    CategoryModel(categoryName: 'Technology', image: 'assets/images/technology.jpeg'),
    CategoryModel(categoryName: 'Business', image: 'assets/images/business.jpg'),
    CategoryModel(categoryName: 'Science', image: 'assets/images/science.avif'),
    CategoryModel(categoryName: 'Entertaiment', image: 'assets/images/entertaiment.avif'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => CardWigit(category: categories[index],)),
    );
  }
}
