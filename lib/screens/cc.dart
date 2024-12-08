// import 'package:flutter/material.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
    
//       home: BottomNavBarExample(),
//     );
//   }
// }

// class BottomNavBarExample extends StatefulWidget {
//   @override
//   _BottomNavBarExampleState createState() => _BottomNavBarExampleState();
// }

// class _BottomNavBarExampleState extends State<BottomNavBarExample> {
//   int _selectedIndex = 0;

//   // List of screens for each tab
//   static const List<Widget> _pages = <Widget>[
//     Center(child: Text('Home Page', style: TextStyle(fontSize: 24))),
//     Center(child: Text('Profile Page', style: TextStyle(fontSize: 24))),
//     Center(child: Text('Search Page', style: TextStyle(fontSize: 24))),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
  
//       body: _pages[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.blue,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }