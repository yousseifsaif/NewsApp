// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:newsapp/category/CategoryList.dart';
// import 'package:newsapp/category/ListViewIgit.dart';
// import 'package:newsapp/category/NewsListView.dart';
// import 'package:newsapp/category/navigationWigit.dart';
// import 'package:newsapp/screens/Proflie.dart';
// import 'package:newsapp/screens/Setting.dart';
//
// import 'currency.dart';
//
// class Homepage extends StatefulWidget {
//   const Homepage({super.key});
//
//   @override
//   State<Homepage> createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   int CurrentIndex = 0;
//   final List<Widget> _pages = [
//     Homepage(),
//     CurrencyPage(),
//     SettingsPage(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "News",
//                 style: TextStyle(),
//               ),
//               Text(
//                 "Cloud",
//                 style: TextStyle(color: Colors.orange),
//               ),
//             ],
//           ),
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           centerTitle: true,
//         ),
//         body: Column(
//           children: [
//             Categorylist(),
//             Expanded(
//               child: Newslistview(),
//             ),
//             Container(
//               child: GNav(
//                 gap: 8,
//                 activeColor: Colors.white,
//                 color: Colors.grey,
//                 tabBackgroundColor: Colors.blue,
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//                 onTabChange: (index) {
//                   setState(() {
//                     var CurrentIndex = index;
//                   });
//                 },
//                 tabs: const [
//                   GButton(
//                     icon: Icons.home,
//                     text: 'Home',
//                   ),
//                   GButton(
//                     icon: Icons.search,
//                     text: 'Search',
//                   ),
//                   GButton(
//                     icon: Icons.currency_exchange,
//                     text: 'Currencies',
//                   ),
//                   GButton(
//                     icon: Icons.settings,
//                     text: 'Settings',
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




