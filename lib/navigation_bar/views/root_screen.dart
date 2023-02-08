import 'package:faramove_test/community/views/community_page.dart';
import 'package:faramove_test/home/views/home_page.dart';
import 'package:faramove_test/navigation_bar/dummy_screens/account.dart';
import 'package:faramove_test/navigation_bar/dummy_screens/resources.dart';
import 'package:faramove_test/navigation_bar/dummy_screens/session.dart';
import 'package:faramove_test/navigation_bar/utilities/nav_strings.dart';
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
    const Resources(),
    const Session(),
    const CommunityPage(),
    const Account(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _screenOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:
            AppColors.white.withOpacity(0.5), //here set your transparent level
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.darkBlue,
        unselectedItemColor: AppColors.textBlack,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: NavigationStrings.home),
          BottomNavigationBarItem(
              icon: Icon(Icons.help_center),
              label: NavigationStrings.resources),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined),
              label: NavigationStrings.session),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined),
              label: NavigationStrings.community),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: NavigationStrings.account),
        ],
      ),
    );
  }
}
