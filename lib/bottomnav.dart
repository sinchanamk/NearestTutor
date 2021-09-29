import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:student/bookings.dart';
import 'package:student/const/color.dart';
import 'package:student/review.dart';
import 'package:student/profilestudent.dart';
import 'package:student/profile3.dart';
import 'package:student/screen_2.dart';

class BottomBarScreen extends StatefulWidget {
  static const routeName = '/BottomBarScreen';
  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List? _pages;
  int _selectedIndex = 0;
  @override
  void initState() {
    _pages = [
      {'page': Screen2(), 'title': 'My Students'},
      {'page': Booking(), 'title': 'Bookings'},
      {'page': Profile3(), 'title': 'Search Screen'},
    ];
    super.initState();
  }

  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages![_selectedIndex]['page'],
      bottomNavigationBar: SizedBox(
        height: 64,
        child: BottomNavigationBar(
          onTap: _selectedPage,
          backgroundColor: ColorsConsts.ccyan,
          selectedItemColor: ColorsConsts.white,
          unselectedItemColor: ColorsConsts.white,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon4.png',
                height: 33,
              ),
              label: 'My students',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon3.png',
                height: 33,
              ),
              label: 'Bookings',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon2.png',
                height: 33,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
