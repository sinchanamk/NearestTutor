import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/bottomnav.dart';
import 'package:student/const/color.dart';
import 'package:student/login.dart';
import 'package:student/screen_2.dart';

import 'login2.dart';

class PaymentTeacher extends StatefulWidget {
  const PaymentTeacher({Key? key}) : super(key: key);

  @override
  State<PaymentTeacher> createState() => _PaymentTeacherState();
}

class _PaymentTeacherState extends State<PaymentTeacher> {
  bool _hasBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    bool press = false;
    return SafeArea(
      child: Scaffold(
          backgroundColor: ColorsConsts.white,
          body: SingleChildScrollView(
              child: Column(children: [
            Image.asset(
              'assets/plan2.png',
              width: 900,
              fit: BoxFit.cover,
            ),
                  const Padding(
              padding: EdgeInsets.only(top: 58.0),
              child: Text(
                'SELECT \n YOUR \n PLAN',
                style: TextStyle(
                    color: ColorsConsts.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 48.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Column(children: [
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: _hasBeenPressed == true
                                    ? ColorsConsts.ccyan
                                    : ColorsConsts.white,
                              ),
                              //  border: Border.all(
                              //  color: _hasBeenPressed==true?ColorsConsts.ccyan:ColorsConsts.black,)),

                              child: OutlineButton(
                                onPressed: () => {
                                  setState(() {
                                    _hasBeenPressed = !_hasBeenPressed;
                                  })
                                },
                                shape: StadiumBorder(),
                                borderSide: const BorderSide(
                                    width: 2, color: ColorsConsts.ccyan),
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                      top: 10, bottom: 10, left: 20, right: 20),
                                  child: Text(
                                    'PLAN A',
                                    style: TextStyle(
                                        color: ColorsConsts.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                              ))
                        ]));
                  },
                  itemCount: 4,
                  shrinkWrap: true,
                )),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 10, left: 24, right: 24),
              child: Container(
                height: 40,
                width: 145,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    border: Border.all(color: ColorsConsts.ccyan),
                    color: ColorsConsts.ccyan),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: ColorsConsts.ccyan,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BottomBarScreen()),
                    );
                  },
                  child: Text(
                    'PAY',
                    style: TextStyle(
                        color: ColorsConsts.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ]))),
    );
  }
}
