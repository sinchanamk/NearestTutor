import 'package:flutter/material.dart';
import 'package:student/teacherloc.dart';
import 'package:student/student.dart';
import 'const/color.dart';
import 'login2.dart';

class Profile3 extends StatefulWidget {
  const Profile3({Key? key}) : super(key: key);

  @override
  State<Profile3> createState() => _Profile3State();
}

class _Profile3State extends State<Profile3>{
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
        backgroundColor: ColorsConsts.white,
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 220,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: ColorsConsts.ccyan,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40.0,left: 120),
                        child: Container(
                          alignment: Alignment.center,
                          child:  Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: CircleAvatar(
                              radius:55,
                              backgroundImage: AssetImage('assets/p.jpg'),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom:64,left: 45),
                        child: Image.asset('assets/icon.png',height: 35,),
                      ),
                    ],
                  ),
                const  Padding(
                    padding:  EdgeInsets.all(8.0),
                    child:  Text(
                      'Mr. Jennifer',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: ColorsConsts.white),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20,),
                  child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Name',
                          labelStyle: TextStyle(color: ColorsConsts.black,
                          fontWeight: FontWeight.bold,fontSize: 15),)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 20, left: 20, top: 5),
                  child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Address',
                          labelStyle: TextStyle(color: ColorsConsts.black,fontSize: 15,fontWeight: FontWeight.bold),
                         )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 20, left: 20, top: 5),
                  child: TextFormField(
                      decoration: InputDecoration(
                    labelText: 'Phone Number',
                    labelStyle: TextStyle(color: ColorsConsts.black,fontSize: 15,fontWeight: FontWeight.bold),
                  )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 20, left: 20, top: 5),
                  child: TextFormField(
                      decoration: const InputDecoration(
                    labelText: 'Experience',
                    labelStyle: TextStyle(color: ColorsConsts.black,fontSize: 15,fontWeight: FontWeight.bold),
                  )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 20, left: 21, top: 9),
                  child: Row(
                    children: [
                      const Text(
                        'Interests',
                        style: TextStyle(
                            color: ColorsConsts.black, fontSize: 15,fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 56.0),
                        child: Container(
                          height: 45,
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: ColorsConsts.black, width: 2)),
                        ),
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Icon(
                                Icons.add_circle_outline,
                                size: 30,
                                color: ColorsConsts.ccyan,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Add interests',
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  color: ColorsConsts.black, fontSize: 7),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Add Slots',
                        style: TextStyle(
                            color: ColorsConsts.black, fontSize: 15,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 56.0),
                      child: Container(
                        height: 45,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: ColorsConsts.black, width: 2)),
                      ),
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.add_circle_outline,
                              size: 30,
                              color: ColorsConsts.ccyan,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Add Slots',
                            style: TextStyle(fontWeight: FontWeight.bold,
                                color: ColorsConsts.black, fontSize: 7),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ]),
        ));
  }
}
