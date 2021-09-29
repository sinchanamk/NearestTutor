import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:student/bottomnav.dart';
import 'package:student/profilestudent.dart';
import 'package:student/review.dart';
import 'package:student/student_loc.dart';

import 'const/color.dart';

class TeacherProfile extends StatefulWidget {
  const TeacherProfile({Key? key}) : super(key: key);

  @override
  _TeacherProfileState createState() => _TeacherProfileState();
}

class _TeacherProfileState extends State<TeacherProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsConsts.white,
        appBar: AppBar(
          backgroundColor: ColorsConsts.yellow,
          title: const Text(
            'Teacher Profile',
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
                padding: const EdgeInsets.only(left: 118, top: 10),
                child: Container(
                  alignment: Alignment.center,
                  child: Hero(
                    tag: 'img-tag',
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/p.jpg'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 108.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/icon1.png',
                    height: 22,
                    color: ColorsConsts.black,
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 125, top: 5, bottom: 5),
                child: Text(
                  'Mr. Jennifer',
                  style: TextStyle(
                    fontSize: 18,
                    color: ColorsConsts.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 80.0, top: 10),
                child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: ColorsConsts.yellow,
                        width: 3.5,
                      ),
                    ),
                    child: Text(
                      '40',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorsConsts.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38, top: 10),
                child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: ColorsConsts.yellow,
                        width: 3.5,
                      ),
                    ),
                    child: Text(
                      '4.5',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorsConsts.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38.0, top: 10),
                child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: new Border.all(
                        color: ColorsConsts.yellow,
                        width: 3.5,
                      ),
                    ),
                    child: Text(
                      '5km',
                      style: TextStyle(
                          color: ColorsConsts.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Review()),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(left: 78.0, top: 10),
                  child: SizedBox(
                    height: 20,
                    width: 57,
                    child: Text(
                      'Reviews',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Review()),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(left: 28.0, top: 10),
                  child: SizedBox(
                    height: 20,
                    width: 43,
                    child: Text(
                      'Rating',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StudentLocation()),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(left: 28.0, top: 10),
                  child: SizedBox(
                    height: 20,
                    width: 49,
                    child: Text(
                      'Location',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Divider(
              color: ColorsConsts.black,
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 10.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Experience',
                style: TextStyle(
                    color: ColorsConsts.yellow,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18, right: 18, top: 8, bottom: 18),
            child: Text(
              'Dedicated, resourceful and goal-driven professional educator with a solid commitmentt to the social and academic growth & development of every child.',
              style: TextStyle(
                  color: ColorsConsts.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 5),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Interests',
                style: TextStyle(
                    color: ColorsConsts.yellow,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // ignore: sized_box_for_whitespace
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18, top: 5),
            child: SizedBox(
                height: 120,
                child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    //physics: AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Image.asset("assets/f1.png"),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 8,
                            ),
                            child: Image.asset("assets/f2.png"),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 15, right: 8),
                            child: Image.asset("assets/f3.png"),
                          ),
                        ],
                      );
                    })),
          ),

          // ignore: dead_code
          Padding(
            padding: const EdgeInsets.only(top: 14.0, left: 18),
            child: Container(
              alignment: Alignment.topLeft,
              child: const Text(
                'Rating and Reviews',
                style: TextStyle(
                    color: ColorsConsts.yellow,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                  width: 390,
                  height: 190,
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorsConsts.yellow),
                      borderRadius: BorderRadius.circular(10)),
                  // Make rounded corner
                  child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      //physics: AlwaysScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Row(children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 28.0),
                                child: Text(
                                  "\"Thank you for this\n arrangement and it is\n working properly from\n my side. thank you for\n supporting all the\n students. \n",
                                  style: TextStyle(
                                      color: ColorsConsts.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10.0, right: 40),
                                child: RatingBar.builder(
                                  itemSize: 30,
                                  initialRating: 3.5,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 4,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 0.0),
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: ColorsConsts.white,
                            thickness: 2,
                          ),
                          Row(children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 28.0),
                                  child: Text(
                                    "\"Thank you for this\n arrangement and it is\n working properly from\n my side. thank you for\n supporting all the\n students. \n",
                                    style: TextStyle(
                                      color: ColorsConsts.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0, right: 40),
                                  child: RatingBar.builder(
                                    itemSize: 30,
                                    initialRating: 3.5,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 4,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 0.0),
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ])
                        ]);
                      }))),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 40, left: 24, right: 24),
            child: Container(
              height: 44, width: 123,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  border: Border.all(color: ColorsConsts.yellow),
                  color: ColorsConsts.yellow),
              //alignment: Alignment.center,
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: ColorsConsts.yellow,
                ),
                onPressed: () {},
                child: Text(
                  'Book Now',
                  style: TextStyle(
                      color: ColorsConsts.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ])));
  }
}
