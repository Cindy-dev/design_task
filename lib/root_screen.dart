import 'package:faramove_test/community/views/community_page.dart';
import 'package:faramove_test/home/views/home_page.dart';
import 'package:faramove_test/utilities/app_colors.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  //remove from screen later
  int _selectedIndex = 0;
  static final List<Widget> _screenOptions = <Widget>[
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const CommunityPage(),
    const HomePage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:
            Colors.black.withOpacity(0.1), //here set your transparent level
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.darkBlue,
        unselectedItemColor: AppColors.textBlack,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.help_center), label: 'Resources'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined), label: 'Session'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined), label: 'Community'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
