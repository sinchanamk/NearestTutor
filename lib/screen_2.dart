import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/drawerteach.dart';
import 'package:student/student.dart';

import 'const/color.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

class _Screen2State extends State<Screen2> {
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
        //extendBody: true,
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
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12, top: 35),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .7,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2),
              itemBuilder: (context, index) {
                return Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 7.0,
                      right: 7.0,
                      bottom: 31,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border:
                              Border.all(color: ColorsConsts.ccyan, width: 3)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StudentProfile2()));
                        },
                        child: Column(children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 5,
                            child: Padding(
                              padding: EdgeInsets.only(left: 7.0, top: 15),
                              child: CircleAvatar(
                                radius: 80,
                                backgroundColor: ColorsConsts.white,
                                backgroundImage: AssetImage(
                                  'assets/s.jpg',
                                ),
                              ),
                            ),
                          ),
                          // ignore: avoid_unnecessary_containers

                          const Divider(
                            color: ColorsConsts.ccyan,
                            thickness: 2,
                            //height: 60,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              right: 10.0,
                            ),
                            child: Text(
                              'Zain',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: ColorsConsts.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/icon1.png',
                            height: 22,
                            color: ColorsConsts.ccyan,
                          )),
                    ),
                  )
                ]);
              },
              itemCount: 6,
              physics: const NeverScrollableScrollPhysics(),

              shrinkWrap: true, //controller: controller,
            ),
          ),
        ])));
  }
}
