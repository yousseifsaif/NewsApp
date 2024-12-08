import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:newsapp/screens/HomePage.dart';
import 'package:newsapp/screens/Proflie.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({
    super.key,
  });

  @override
  State<MyBottomNavBar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyBottomNavBar> {
  int CurrentIndex = 0;

  List<Widget> listOptions = <Widget>[const Homepage(), const Proflie(), const Homepage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: IndexedStack(
          index: CurrentIndex,
          children: listOptions,
        ),
        bottomNavigationBar: Container(
            color: Colors.white,
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                child: GNav(
                  gap: 8,
                  activeColor: Colors.white,
                  color: Colors.grey,
                  tabBackgroundColor: Colors.blue,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  onTabChange: (index) {
                    setState(() {
                      CurrentIndex = index;
                    });
                  },
                  tabs: const [
                    GButton(
                      icon: Icons.home,
                      text: 'Home',
                    ),
                    GButton(
                      icon: Icons.search,
                      text: 'Search',
                    ),
                    GButton(
                      icon: Icons.currency_exchange,
                      text: 'Currencies',
                    ),
                    GButton(
                      icon: Icons.settings,
                      text: 'Settings',
                    ),
                  ],
                  selectedIndex: CurrentIndex,
                ),
                ),
                ),
                );
  }
}
