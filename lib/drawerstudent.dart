import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:student/const/color.dart';
import 'package:student/profilestudent.dart';
import 'package:student/teacherprofile_1.dart';

import 'login.dart';

class Profile1 extends StatefulWidget {
  const Profile1({Key? key}) : super(key: key);

  @override
  _Profile1State createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

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
            height: 170,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [ColorsConsts.yellow, ColorsConsts.lightyellow],
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/s.jpg'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'Ms. Jennifer',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 1,
                        color: ColorsConsts.white),
                  ),
                ),
              ),
            ]),
          ),
          Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 10, right: 18),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile2()),
                    );
                  
                    },
                    icon: Image.asset(
                      'assets/1.png',
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
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TeacherProfile()),
                    );
                  
                    },
                    icon: Image.asset(
                      'assets/2.png',
                    ),
                    iconSize: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      'My Tutor',
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
                      'assets/3.png',
                    ),
                    iconSize: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
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
                      'assets/4.png',
                    ),
                    iconSize: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
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
                      'assets/5.png',
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
                      'assets/6.png',
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
                      'assets/7.png',
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
                    'assets/8.png',
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
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  icon: Image.asset(
                    'assets/9.png',
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
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
