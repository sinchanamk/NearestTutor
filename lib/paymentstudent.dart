import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/const/color.dart';
import 'package:student/login.dart';
import 'package:student/screen.dart';

import 'login2.dart';

class PlanUp extends StatefulWidget {
  const PlanUp({Key? key}) : super(key: key);

  @override
  State<PlanUp> createState() => _PlanUpState();
}

class _PlanUpState extends State<PlanUp> {
  bool _hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: ColorsConsts.white,
          body: SingleChildScrollView(
              child: Column(children: [
            Image.asset(
              'assets/plan1.png',
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
                                    ? ColorsConsts.yellow
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
                                    width: 2, color: ColorsConsts.yellow),
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
                height: 45,
                width: 145,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    border: Border.all(color: ColorsConsts.yellow),
                    color: ColorsConsts.yellow),
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
