import 'package:flutter/material.dart';
import 'package:student/const/color.dart';
import 'package:student/paymentstudent.dart';

class StudentSignUp extends StatelessWidget {
  const StudentSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorsConsts.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2.5,
              height: MediaQuery.of(context).size.height / 2.4,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Image.asset(
                  "assets/c1.png",
                  height: 30,
                  width: 20,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 2.5,
              child: Image.asset(
                "assets/p1.png",
                height: 30,
                width: 40,
                fit: BoxFit.fitWidth,
              ),
            ),
          ]),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 13),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Name",
                hintStyle: TextStyle(color: ColorsConsts.black),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  borderSide: BorderSide(color: ColorsConsts.black, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  borderSide: BorderSide(color: ColorsConsts.black, width: 2.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 13),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Email",
                hintStyle: TextStyle(color: ColorsConsts.black),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  borderSide: BorderSide(color: ColorsConsts.black, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  borderSide: BorderSide(color: ColorsConsts.black, width: 2.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 13),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Number",
                hintStyle: TextStyle(color: ColorsConsts.black),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  borderSide: BorderSide(color: ColorsConsts.black, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  borderSide: BorderSide(color: ColorsConsts.black, width: 2.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 13),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Address",
                hintStyle: TextStyle(color: ColorsConsts.black),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  borderSide: BorderSide(color: ColorsConsts.black, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  borderSide: BorderSide(color: ColorsConsts.black, width: 2.0),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 25, bottom: 5, left: 20, right: 20),
            child: Container(
              height: 45, width: 145,
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
                    MaterialPageRoute(builder: (context) => PlanUp()),
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
    ));
  }
}
