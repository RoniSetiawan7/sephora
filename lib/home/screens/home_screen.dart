import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sephora/home/widgets/account_jumbotron.dart';
import 'package:sephora/home/widgets/favorite_list.dart';
import 'package:sephora/home/widgets/inactive_banner.dart';
import 'package:sephora/home/widgets/transaction_history.dart';
import 'package:sephora/home/widgets/user_info.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _bottomNavIndex = 0;
  List<IconData> iconList = [
    Icons.home_rounded,
    Icons.article_outlined,
    Icons.star_outline_rounded,
    Icons.person_outline_outlined
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F7FD),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
          child: Column(
            children: [
              const UserInfo(),
              const SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: const [
                      InactiveBanner(),
                      SizedBox(height: 20),
                      AccountJumbotron(),
                      SizedBox(height: 40),
                      FavoriteList(),
                      SizedBox(height: 50),
                      TransactionHistory(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconList,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.smoothEdge,
          onTap: (index) => setState(() => _bottomNavIndex = index),
          backgroundColor: Colors.white,
          inactiveColor: const Color(0xFFBCC8E7),
          activeColor: const Color(0XFF2F82FF),
          iconSize: 28,
          height: 70,
          leftCornerRadius: 20,
          rightCornerRadius: 20,
        ),
      ),
    );
  }
}
