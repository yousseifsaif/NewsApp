import 'package:dio/dio.dart';
import 'package:newsapp/screens/intro.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:newsapp/models/articleModel.dart';
import 'package:newsapp/screens/Proflie.dart';
import 'package:newsapp/screens/Setting.dart';
import 'package:newsapp/screens/currency.dart';
import 'package:flutter/material.dart';
import '../category/CategoryList.dart';
import '../category/NewsListView.dart';
import 'Services/newsService.dart';
import 'category/news_list_view_builder.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splashScreen(),));
}

class Homepage extends StatelessWidget {
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
          body: GNavExample(),
        ));
  }
}

class GNavExample extends StatefulWidget {
  @override
  _GNavExampleState createState() => _GNavExampleState();
}

class _GNavExampleState extends State<GNavExample> {
  int _selectedIndex = 0;

  // Pages for Bottom Navigation
  final List<Widget> _pages = [
    HomePage(),
    CurrencyPage(),
    SettingsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: GNav(
          gap: 8,
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          tabBackgroundColor: Colors.grey[200]!,
          activeColor: Colors.blue,
          color: Colors.black,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.currency_exchange,
              text: 'Currency',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Categorylist(),
        SizedBox(height: 32,),
        Expanded(
          child: NewListViewBuilder(category: 'general',),
        ),
      ],
    );
  }
}
