import 'package:flutter/material.dart';
import 'package:newsapp/category/CategoryList.dart';
import 'package:newsapp/category/ListViewIgit.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "News",
                style: TextStyle(),
              ),
              Text(
                "Cloud",
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: const Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Categorylist(),
                  ),
                  SliverToBoxAdapter(
                      child: SizedBox(
                    height: 32,
                  )),
                  Listviewigit(),
                ],
              ),
            ),

            // Fixed bottom navigation bar
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Container(
            //     color: Colors.white,
            //     height: 60.0, // Height of the bottom bar
            //     child: Row(
            //       children: [MyBottomNavBar()],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
