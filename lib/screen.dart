import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:student/const/color.dart';
import 'package:student/profilestudent.dart';
import 'package:student/teacherprofile_1.dart';

import 'drawerstudent.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
 
  double width = 0.0;
  double height = 0.0;
 
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  
  @override
  void didChangeDependencies() {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    super.didChangeDependencies();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,

      drawer: Profile1(),
      backgroundColor: ColorsConsts.white,

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(138),
        child: AppBar(
          elevation: 0,
          backgroundColor: ColorsConsts.white,
          flexibleSpace: Container(
            height: 170,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [ColorsConsts.yellow, ColorsConsts.lightyellow],
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 90, bottom: 30),
                child: Container(
                  width: 30,
                  height: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      border:
                          Border.all(color: ColorsConsts.white, width: 2.5)),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: ColorsConsts.white,
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    // textAlign: TextAlign.left,
                  ),
                )),
          ),
          leading: Builder(
            builder: (context) => GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Icon(
                  Icons.menu,
                  color: ColorsConsts.white,
                  size: 30,
                )),
          ),
          actions: [
            Padding(
                padding: EdgeInsets.only(
                  right: 10.0,
                ),
                child: IconButton(
                  icon: Image.asset(
                    'assets/icon2.png',
                  ),
                  onPressed: () {
                    Navigator.push(context,
                   // ScalePageRoute(widget: Profile2()));
                       MaterialPageRoute(builder: (context) => Profile2()));
                  },
                ))
          ],
          automaticallyImplyLeading: false,
        ),
      ),
      // drawer: Profile1(),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(
                          bottom: 26, right: 25, left: 10),
                      child: Stack(children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 28,
                          ),
                          height: 142,
                          width: 450,
                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.circular(40),
                          // ),
                          child: Card(
                            color: ColorsConsts.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                 // ScalePageRoute(widget: TeacherProfile())
                                  MaterialPageRoute(
                                      builder: (context) => TeacherProfile()),
                                );
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                        color: ColorsConsts.yellow, width: 4.5),
                                  ),
                                  child: Column(children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(),
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 115),
                                              child: Text(
                                                'Mr. Jennifer',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: ColorsConsts.black),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 3),
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 2,
                                                ),
                                                child: Image.asset(
                                                  'assets/icon1.png',
                                                  height: 15,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 122),
                                          child: Container(
                                              alignment: Alignment.center,
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                border: Border.all(
                                                  color: ColorsConsts.yellow,
                                                  width: 3,
                                                ),
                                              ),
                                              child: const Text(
                                                '40',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: ColorsConsts.black,
                                                    fontSize: 14),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 8,
                                          ),
                                          child: Container(
                                              alignment: Alignment.center,
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                border: Border.all(
                                                  color: ColorsConsts.yellow,
                                                  width: 3,
                                                ),
                                              ),
                                              child: const Text(
                                                '4.5',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: ColorsConsts.black,
                                                    fontSize: 14),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 9,
                                          ),
                                          child: Container(
                                              alignment: Alignment.center,
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                border: Border.all(
                                                  color: ColorsConsts.yellow,
                                                  width: 3,
                                                ),
                                              ),
                                              child: const Text(
                                                '5km',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: ColorsConsts.black,
                                                    fontSize: 14),
                                              )),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 120, top: 4),
                                          // ignore: sized_box_for_whitespace
                                          child: Container(
                                            height: 30,
                                            width: 54,
                                            child: const Text(
                                              'Reviews',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 4),
                                          child: SizedBox(
                                            height: 30,
                                            width: 47,
                                            child: Text(
                                              'Rating',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 4),
                                          child: SizedBox(
                                            height: 30,
                                            width: 49,
                                            child: Text(
                                              'Location',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ])),
                            ),
                          ),
                        ),
                         Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: CircleAvatar(
                              backgroundColor: ColorsConsts.yellow,
                              maxRadius: 70.0,
                            
                                child: CircleAvatar(
                                  
                                  maxRadius: 65.0,
                                  backgroundImage: AssetImage(
                                    'assets/p.jpg',
                                  ),
                                
                                                            ),
                            ),
                          ),
                        ),
                      ]));
                }),
          )
        ]),
      ),
    );
  }
}
