import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/screen.dart';
import 'package:student/studentsignup.dart';

import 'const/color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation myanimation;

  double width = 0.0;
  double height = 0.0;

  @override
  void didChangeDependencies() {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    myanimation = Tween<double>(begin: 380, end: 400).animate(controller);
    controller.forward().whenComplete(() {
      controller.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: myanimation,
        builder: (context, widget) {
          return Scaffold(
              //backgroundColor: ColorsConsts.black,
              body: Column(children: [
            Image.asset(
              'assets/login1.png',
              height: myanimation.value,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: height * .020,
                right: height * .01,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.person_outline_rounded,
                    color: ColorsConsts.black,
                    size: 33,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    padding: EdgeInsets.only(
                        right: height * .03, left: height * .02),
                    child: TextFormField(
                        cursorColor: ColorsConsts.black,
                        decoration: InputDecoration(
                            labelText: 'Enter User Id',
                            labelStyle: TextStyle(
                                color: ColorsConsts.grey, fontSize: 15))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: height * .021, right: height * .02, top: height * .01),
              child: Row(
                children: [
                  Icon(
                    Icons.phone_android_outlined,
                    color: ColorsConsts.black,
                    size: 28,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.20,
                    padding: EdgeInsets.only(
                        right: height * .03, left: height * .02),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              color: ColorsConsts.grey, fontSize: 15)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: height * .027,
                left: height * .016,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: height * .04,
                    width: height * .04,
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
                    padding: EdgeInsets.only(right: height * .099),
                    child: Container(
                      height: height * .045,
                      width: height * .045,
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
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: height * .1, right: height * .02),
                      child: Container(
                        height: height * .06, width: height * .2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            border: Border.all(color: ColorsConsts.yellow),
                            color: ColorsConsts.yellow),
                        //alignment: Alignment.center,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            primary: ColorsConsts.yellow,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Screen()),
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
                      padding: EdgeInsets.only(
                          left: height * .090,
                          bottom: height * .005,
                          top: height * .02),
                      child: Text('Don\'t have an account? '),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: height * .03),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StudentSignUp()),
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
                  ],
                ),
                SizedBox(
                  // height: 160,
                  height: height * .20,
                  child: Padding(
                    padding: const EdgeInsets.only(),
                    child: Image.asset('assets/login2.png'),
                  ),
                )
              ],
            ),
          ]));
        });
  }
}
