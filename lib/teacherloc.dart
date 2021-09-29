import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:student/bottomnav.dart';
import 'package:student/const/color.dart';
import 'package:student/login2.dart';
import 'package:student/profilestudent.dart';
import 'package:student/teacherprofile_1.dart';

import 'login.dart';

class TeacherLocation extends StatefulWidget {
  const TeacherLocation({Key? key}) : super(key: key);

  @override
  _TeacherLocationState createState() => _TeacherLocationState();
}

class _TeacherLocationState extends State<TeacherLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsConsts.white,
        appBar: AppBar(
          backgroundColor: ColorsConsts.ccyan,
          title: Text(
            'Book Now',
            style: TextStyle(
                color: ColorsConsts.white,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: ColorsConsts.white,
              )),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 108, top: 10),
                child: Container(
                  alignment: Alignment.center,
                  child: Hero(
                    tag: 'img-tag',
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage('assets/s.jpg'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 108.0, left: 6),
                child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/icon1.png',
                      color: ColorsConsts.black,
                      height: 22,
                    )),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: Text(
              'Ms. ZAIN',
              style: TextStyle(
                  fontSize: 19,
                  color: ColorsConsts.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: SizedBox(
              height: 330,
              child: Image.asset(
                'assets/loc.png',
                height: 450,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 20),
            child: Container(
              height: 43, width: 127,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  border: Border.all(color: ColorsConsts.ccyan),
                  color: ColorsConsts.ccyan),
              //alignment: Alignment.center,
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: ColorsConsts.ccyan,
                ),
                onPressed: () {},
                child: Text(
                  'Book',
                  style: TextStyle(
                      color: ColorsConsts.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ])));
  }
}
