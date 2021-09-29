import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:student/const/color.dart';
import 'package:student/profilestudent.dart';

import 'login2.dart';

class TeacherDrawer extends StatefulWidget {
  const TeacherDrawer({Key? key}) : super(key: key);

  @override
  _TeacherDrawerState createState() => _TeacherDrawerState();
}

class _TeacherDrawerState extends State<TeacherDrawer> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  double width = 0.0;
  double height = 0.0;

  @override
  void didChangeDependencies() {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 168,
            decoration: const BoxDecoration(
              color: ColorsConsts.ccyan,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/p.jpg'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(),
                child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'Mr. Jennifer',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: ColorsConsts.white),
                  ),
                ),
              ),
            ]),
          ),
          Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18, top: 5),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/11.png',
                    ),
                    iconSize: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      'Profile',
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorsConsts.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 18.0,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/22.png',
                    ),
                    iconSize: 50,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: Text(
                      'My Student',
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorsConsts.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/33.png',
                    ),
                    iconSize: 50,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: Text(
                      'My Payments',
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorsConsts.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/44.png',
                    ),
                    iconSize: 50,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: Text(
                      'About',
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorsConsts.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/55.png',
                    ),
                    iconSize: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      'Contact',
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorsConsts.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ])),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/66.png',
                    ),
                    iconSize: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      'Facebook',
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorsConsts.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/77.png',
                    ),
                    iconSize: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      'Instagram',
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorsConsts.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/88.png',
                  ),
                  iconSize: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    'LinkedIn',
                    style: TextStyle(
                        fontSize: 16,
                        color: ColorsConsts.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login2Page()),
                  );
                },
                icon: Image.asset(
                  'assets/99.png',
                ),
                iconSize: 50,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  'Logout',
                  style: TextStyle(
                      fontSize: 16,
                      color: ColorsConsts.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
