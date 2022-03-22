import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:final_project/constant/color.dart';
import 'package:final_project/screens/admin/home_admin_screen.dart';
import 'package:final_project/screens/admin/profile_admin_screen.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var tabIndex = 0;
  PageController? _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }
  @override
  void dispose() {
    super.dispose();
    _pageController!.dispose();
  }

  void changeTabIndex(int index) {
    setState(() {
      tabIndex = index;
    });
    _pageController!.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: tabIndex,
        children: [
          const HomeAdminScreen(),
          ProfileAdminScreen(),
        ],
      ),
      bottomNavigationBar:BottomNavyBar(
        selectedIndex: tabIndex,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          tabIndex = index;
          // _pageController!.animateToPage(index,
          //     duration: Duration(milliseconds: 300), curve: Curves.ease);
        }),
        items: [
          BottomNavyBarItem(
            icon: const Icon(Icons.apps),
            title: const Text('Home'),
            activeColor: ColorConst.imageColor,
          ),
          BottomNavyBarItem(
              icon: const Icon(Icons.person),
              title: const Text('Profile'),
              activeColor: ColorConst.containerColor
          ),
        ],
      ),
    );
  }
}
