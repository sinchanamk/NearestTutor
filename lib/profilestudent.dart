import 'package:flutter/material.dart';
import 'package:student/teacherprofile_1.dart';
import 'package:student/teachersignup.dart';
import 'package:student/drawerteach.dart';

import 'const/color.dart';
import 'login2.dart';

class Profile2 extends StatefulWidget {
  const Profile2({Key? key}) : super(key: key);

  @override
  _Profile2State createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {

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
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorsConsts.white,
            body: SingleChildScrollView(
                child: Column(children: [
              Container(
                height:height*.30 ,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [ColorsConsts.yellow, ColorsConsts.lightyellow],
                      begin:  FractionalOffset(0.0, 0.0),
                      end:  FractionalOffset(1.0, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(top:height*.0132,left: height*.13),
                          child: Container(
                            alignment: Alignment.center,
                            child:  CircleAvatar(
                              radius: 70,
                              backgroundImage: AssetImage('assets/s.jpg'),
                            ),
                          ),
                        ),
                          Padding(
                        padding:  EdgeInsets.only(bottom:height*.13,left: height*.07),
                        child: Image.asset('assets/icon.png',
                        height:height*.05,color: ColorsConsts.white,),
                      ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only( top:height*.03,right: height*.028 ),
                      child: Text(
                        'Ms. ZAIN',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: ColorsConsts.white),
                      ),
                    ),
                  ],
                ),
              ),
               Padding(
                  padding: EdgeInsets.only(right: height*.03, left: height*.03,top: height*.02),
                  child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Name',
                          labelStyle: TextStyle(color: ColorsConsts.black,
                          fontWeight: FontWeight.bold,fontSize: 15),)),
                ),
                Padding(
                  
                    padding: EdgeInsets.only(right: height*.03, left: height*.03,),
                 child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Address',
                          labelStyle: TextStyle(color: ColorsConsts.black,fontSize: 15,fontWeight: FontWeight.bold),
                         )),
                ),
                Padding(
                   padding: EdgeInsets.only(right: height*.03, left: height*.03,),
                                   child: TextFormField(
                      decoration: InputDecoration(
                    labelText: 'Phone Number',
                    labelStyle: TextStyle(color: ColorsConsts.black,fontSize: 15,fontWeight: FontWeight.bold),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.only(right: height*.03, left: height*.03,),
                    child: TextFormField(
                      decoration: const InputDecoration(
                    labelText: 'Address',
                    labelStyle: TextStyle(color: ColorsConsts.black,fontSize: 15,fontWeight: FontWeight.bold),
                  )),
                ),
                 Padding(
                  padding: EdgeInsets.only(right: height*.03, left: height*.03,),
                  child: TextFormField(
                      decoration: const InputDecoration(
                    labelText: 'Tutor Required',
                    labelStyle: TextStyle(color: ColorsConsts.black,fontSize: 15,fontWeight: FontWeight.bold),
                  )),
                ),
              
              Padding(
               padding: EdgeInsets.only(right: height*.03, left: height*.04,top: height*.01),
                   child: Row(
                  children: [
                    Text(
                      'Subjects',
                      style:
                          TextStyle(color: ColorsConsts.black, fontSize: 16,fontWeight: FontWeight.bold,
),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:56),
                      child: Container(
                        height: 45,
                        width: 100,
                        decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: ColorsConsts.black, width: 2)),
                      ),
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Padding(
                            padding: const EdgeInsets.only(right: 12, ),
                            child: Icon(
                              Icons.add_circle_outline,
                              size: 30,
                              color: ColorsConsts.yellow,
                            ),
                          ),
                        ),
                         Padding(
                          padding: EdgeInsets.only(right: height*.01,left: 10),
                          child: Text(
                            'Add subjects',
                            style: TextStyle(fontWeight: FontWeight.bold,

                                color: ColorsConsts.black, fontSize: 8),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ]))));
  }
}
