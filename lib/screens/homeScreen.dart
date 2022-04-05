import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'navPages/Home.dart';
import 'navPages/customers.dart';
import 'navPages/previous delivery.dart';


class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> pages = <Widget>[
    Home(),
    PreviousDonatoin(),
    Customers(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
        bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,size: 30,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.delivery_dining,size: 35,),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline,size: 35,),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,

        ),
      body: pages.elementAt(_selectedIndex),
    );
  }
}




