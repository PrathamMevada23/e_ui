import 'package:e_ui/const/color.dart';
import 'package:e_ui/screens/Profile/ProfilePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_ui/screens/Home/HomePage.dart';
import 'package:e_ui/screens/Cart/CartPage.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

import '../screens/Favorite/Fav.dart';

class bottomNavWidget extends StatefulWidget {
  const bottomNavWidget({super.key});

  @override
  State<bottomNavWidget> createState() => _bottomNavWidgetState();
}

class _bottomNavWidgetState extends State<bottomNavWidget> {
  int _index = 0;
  final _pages = [
    HomePage(),
    CartPage(),
    FavPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_index],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.white,
          selectedItemColor: clr.primary,
          unselectedItemColor: Colors.black,
          selectedLabelStyle:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          currentIndex: _index,
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house_fill), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.heart_fill), label: 'Favorites'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_alt_circle), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
