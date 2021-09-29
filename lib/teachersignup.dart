import 'package:flutter/material.dart';
import 'package:student/paymentteacher.dart';

import 'const/color.dart';

class TeacherSignUp extends StatefulWidget {
  const TeacherSignUp({Key? key}) : super(key: key);

  @override
  State<TeacherSignUp> createState() => _TeacherSignUpState();
}

class _TeacherSignUpState extends State<TeacherSignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsConsts.white,
        body: SingleChildScrollView(
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2.3,
                height: MediaQuery.of(context).size.height / 2.4,
                child: Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Image.asset(
                    "assets/c2.png",
                    height: 40,
                    width: 30,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 2.5,
                child: Image.asset(
                  "assets/t.png",
                  height: 240,
                  width: 30,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ]),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, bottom: 7, top: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Name",
                  hintStyle: TextStyle(color: ColorsConsts.black),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide:
                        BorderSide(color: ColorsConsts.black, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide:
                        BorderSide(color: ColorsConsts.black, width: 2.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, bottom: 7, top: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  hintStyle: TextStyle(color: ColorsConsts.black),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide:
                        BorderSide(color: ColorsConsts.black, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide:
                        BorderSide(color: ColorsConsts.black, width: 2.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, bottom: 7, top: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Number",
                  hintStyle: TextStyle(color: ColorsConsts.black),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide:
                        BorderSide(color: ColorsConsts.black, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide:
                        BorderSide(color: ColorsConsts.black, width: 2.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, bottom: 10, top: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Address",
                  hintStyle: TextStyle(color: ColorsConsts.black),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide:
                        BorderSide(color: ColorsConsts.black, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide:
                        BorderSide(color: ColorsConsts.black, width: 2.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15, bottom: 5, left: 20, right: 20),
              child: Container(
                height: 45, width: 145,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    border: Border.all(color: ColorsConsts.ccyan),
                    color: ColorsConsts.ccyan),
                //alignment: Alignment.center,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: ColorsConsts.ccyan,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentTeacher()),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: ColorsConsts.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
