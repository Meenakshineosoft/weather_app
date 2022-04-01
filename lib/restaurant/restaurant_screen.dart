import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/restaurant/account.dart';
import 'package:weather_app/restaurant/cart.dart';
import 'package:weather_app/restaurant/home.dart';
import 'package:weather_app/restaurant/near_by.dart';

class RestaurantScreen extends StatefulWidget {

  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();

}

class _RestaurantScreenState extends State<RestaurantScreen> {
  late int _currentIndex;
  late List<Widget> _children;

  @override
  void initState() {
    _currentIndex = 0;
    _children = [
      Home(),
      NearBy(),
      Cart(),
      Account(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          currentIndex: _currentIndex,
          backgroundColor: Colors.white,
          onTap: onTabTapped,
          activeColor: Colors.pink,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'NearBy',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'Cart',),

            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Account',
            ),
          ],

        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(
            builder: (BuildContext context) {
              return SafeArea(
                top: false,
                bottom: false,
                child: CupertinoApp(
                  home: CupertinoPageScaffold(
                    resizeToAvoidBottomInset: false,
                    child: _children[_currentIndex],
                  ),
                ),
              );
            },
          );
        }
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}