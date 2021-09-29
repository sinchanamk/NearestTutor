import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/bottomnav.dart';
import 'package:student/screen_2.dart';
import 'package:student/student.dart';
import 'package:student/teacherprofile_1.dart';
import 'package:student/teachersignup.dart';
import 'const/color.dart';

class Login2Page extends StatefulWidget  {
  const Login2Page({Key? key}) : super(key: key);

  @override
  State<Login2Page> createState() => _Login2PageState();
}

class _Login2PageState extends State<Login2Page>with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation myanimation;
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: ColorsConsts.white,
          body: SingleChildScrollView(
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.7,
                  height: MediaQuery.of(context).size.height / 2.2,
                  child: Image.asset(
                    "assets/c.png",
                    height: 200,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ]),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 4),
                child: Row(
                  children: [
                    Icon(
                      Icons.person_outline_rounded,
                      color: ColorsConsts.black,
                      size: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.3,
                      padding: EdgeInsets.only(right: 5, left: 20),
                      child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Enter User Id',
                              hintStyle: TextStyle(
                                color: ColorsConsts.grey,
                              ))),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 4,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone_android_outlined,
                      color: ColorsConsts.black,
                      size: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.3,
                      padding: EdgeInsets.only(right: 5, left: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: ColorsConsts.grey,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 27,
                      width: 27,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: ColorsConsts.white,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          'assets/search.png',
                          height: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40.0),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: ColorsConsts.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/facebook.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 6, right: 24),
                child: Container(
                  height: 40, width: 143,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: ColorsConsts.ccyan),
                  //alignment: Alignment.center,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: ColorsConsts.ccyan,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context, //ScalePageRoute(widget: BottomBarScreen()));
                        MaterialPageRoute(
                            builder: (context) => BottomBarScreen()),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: ColorsConsts.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Don\'t have an account? '),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 128, top: 5),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TeacherSignUp()),
                    );
                  },
                  child: Row(
                    children: [
                      Text('Please '),
                      Text(
                        'SIGNUP',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              )
            ]),
          )),
    );
  }
}
