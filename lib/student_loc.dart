import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:student/const/color.dart';

class StudentLocation extends StatefulWidget {
  const StudentLocation({Key? key}) : super(key: key);

  @override
  _StudentLocationState createState() => _StudentLocationState();
}

class _StudentLocationState extends State<StudentLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsConsts.white,
        appBar: AppBar(
          backgroundColor: ColorsConsts.yellow,
          title: Text(
            'Book Now',
            style: TextStyle(
                color: ColorsConsts.white,
                fontWeight: FontWeight.bold,
                fontSize: 17),
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
                        backgroundImage: AssetImage('assets/p.jpg'),
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
                'Mr. Jennifer',
                style: TextStyle(
                    fontSize: 18,
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
              padding: const EdgeInsets.only(
                  top: 20, bottom: 10, left: 20, right: 20),
              child: Container(
                height: 45, width: 127,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    border: Border.all(color: ColorsConsts.yellow),
                    color: ColorsConsts.yellow),
                //alignment: Alignment.center,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: ColorsConsts.yellow,
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
          ]),
        ));
  }
}
