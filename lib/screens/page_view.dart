import 'package:digi_khata/screens/home.dart';
import 'package:digi_khata/screens/money.dart';
import 'package:digi_khata/screens/more/more.dart';
import 'package:digi_khata/theme/colors.dart';
import 'package:flutter/material.dart';

class PageVieew extends StatefulWidget {
  const PageVieew({super.key});
  @override
  State<PageVieew> createState() => _PageVieewState();
}

class _PageVieewState extends State<PageVieew> {
  int selectedIndex = 0;
  List<Widget> screens = const [
    Home(),
    Money(),
    More(),
  ];

  void animateToPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Map<String, dynamic>> pages = [
    {
      'icon': Icons.home,
      'page': const Home(),
      'title': 'home',
    },
    {
      'icon': Icons.money,
      'page': const Money(),
      'title': 'money',
    },
    {
      'icon': Icons.more_horiz,
      'page': const More(),
      'title': 'more',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: screens[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.background,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.toast,
        showUnselectedLabels: true,
        onTap: animateToPage,
        currentIndex: selectedIndex,
        items: pages
            .map(
              (page) => BottomNavigationBarItem(
                icon: Icon(page['icon']),
                label: page['title'],
              ),
            )
            .toList(),
      ),
    );
  }
}
