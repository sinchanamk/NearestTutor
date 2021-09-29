import 'package:flutter/material.dart';
import 'package:student/profile3.dart';

import 'const/color.dart';
import 'drawerteach.dart';

class Booking extends StatefulWidget {
  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> with SingleTickerProviderStateMixin {
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
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            elevation: 0,
            backgroundColor: ColorsConsts.white,
            flexibleSpace: Container(
              height: 100,
              decoration: const BoxDecoration(
                color: ColorsConsts.ccyan,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Builder(
              //           builder: (context) {
              //             return IconButton(
              //               onPressed: () { Scaffold.of(context).openDrawer();
              //  },
              //               icon: const Icon(Icons.menu),
              //               color: ColorsConsts.white,
              //               iconSize: 25,
              //             );
              //           }
              //         ),
              //       ],
              //     ),
            ),
          ),
        ),
        key: _scaffoldKey,
        drawer: TeacherDrawer(),
        backgroundColor: ColorsConsts.white,
        body: SingleChildScrollView(
            child: Column(children: [
          // Container(
          //   height: 120,
          //   decoration: const BoxDecoration(
          //    color:ColorsConsts.ccyan,
          //     borderRadius:  BorderRadius.only(
          //         bottomLeft: Radius.circular(30),
          //         bottomRight: Radius.circular(30),
          //       ),

          //    ),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Builder(
          //         builder: (context) {
          //           return IconButton(
          //             onPressed: () { Scaffold.of(context).openDrawer();
          //    },
          //             icon: const Icon(Icons.menu),
          //             color: ColorsConsts.white,
          //             iconSize: 30,
          //           );
          //         }
          //       ),
          //     ],
          //   ),
          // ),

          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              //scrollDirection: Axis.vertical,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                    padding:
                        const EdgeInsets.only(left: 18.0, right: 18.0, top: 22),
                    child: Stack(children: [
                      Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(
                                  color: ColorsConsts.ccyan, width: 3)),
                          child: Row(
                            children: [
                              Column(children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: 58.0, top: 10, left: 18),
                                  child: Hero(
                                    tag: 'image',
                                    child: CircleAvatar(
                                      backgroundColor: ColorsConsts.ccyan,
                                      radius: 60,
                                      backgroundImage:
                                          AssetImage('assets/s.jpg'),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Ms. ZAIN',
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              color: ColorsConsts.black),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 17),
                                      child: Container(
                                          alignment: Alignment.center,
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Image.asset(
                                                'assets/icon1.png',
                                                height: 22,
                                                color: ColorsConsts.ccyan,
                                              ))),
                                    ),
                                  ],
                                ),
                              ]),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 6, top: 10),
                                    child: ElevatedButton(
                                      child: const Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Text(
                                          'Accept',
                                          style: TextStyle(
                                              color: ColorsConsts.white,
                                              fontSize: 12),
                                        ),
                                      ),
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.green,
                                          textStyle: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: ElevatedButton(
                                      child: const Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Text(
                                          'Decline',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: ColorsConsts.white),
                                        ),
                                      ),
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.red,
                                          textStyle: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ))
                    ]));
              }),
        ])));
  }
}
