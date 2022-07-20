import 'package:flutter/material.dart';
import 'package:instagram/DATA/asset_datas.dart';
import 'package:instagram/SCREENS/home_page.dart';
import 'package:instagram/SCREENS/notification_screen.dart';
import 'package:instagram/SCREENS/profile_screen.dart';
import 'package:instagram/SCREENS/reels_content_section.dart';
import 'package:instagram/SCREENS/reels_screen.dart';
import 'package:instagram/SCREENS/search_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SearchScreen(),
    ReelsScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        elevation: 0,
        onTap: _onItemTapped,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: selectedIndex == 2 ? Colors.black : Colors.white,
            label: "",
            icon: Image.asset(
              selectedIndex == 2 ? homeIconWhite : homeIcon,
              height: selectedIndex == 2 ? 30 : 40,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: selectedIndex == 2 ? Colors.black : Colors.white,
            label: "",
            icon: Icon(
              Icons.search,
              color: selectedIndex == 2 ? Colors.white : Colors.black,
              size: 35,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: selectedIndex == 2 ? Colors.black : Colors.white,
            label: "",
            icon: Image.asset(
              reelsIcon,
              height: 25,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: selectedIndex == 2 ? Colors.black : Colors.white,
            label: "",
            icon: Icon(
              Icons.favorite_outline_sharp,
              color: selectedIndex == 2 ? Colors.white : Colors.black,
              size: 35,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: selectedIndex == 2 ? Colors.black : Colors.white,
            label: "",
            icon: Image.asset(
              saiProfile,
              height: 35,
            ),
          ),
        ],
      ),
    );
  }
}
