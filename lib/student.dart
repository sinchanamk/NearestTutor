import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:student/teacherloc.dart';

import 'const/color.dart';

class StudentProfile2 extends StatefulWidget {
  const StudentProfile2({Key? key}) : super(key: key);

  @override
  _StudentProfile2State createState() => _StudentProfile2State();
}

class _StudentProfile2State extends State<StudentProfile2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsConsts.white,
        appBar: AppBar(backgroundColor: ColorsConsts.ccyan,
          title: Text(
            'Student Profile',
            style: TextStyle(color: ColorsConsts.white,fontWeight: FontWeight.bold,fontSize: 18),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/s.jpg'),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 130.0),
                child: Container(
                  child: Text(
                    'Ms. ZAIN',
                    style: TextStyle(fontSize: 20, color: ColorsConsts.black,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.check_circle_outline_outlined,
                      color: ColorsConsts.ccyan,
                    )),
              )
            ],
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: new Border.all(
                      color: ColorsConsts.ccyan,
                      width: 3.5,
                    ),
                  ),
                 child:Text(
                    '5 km',
                    style:
                        TextStyle(color: ColorsConsts.black, fontSize: 13,fontWeight: FontWeight.bold),
                  )),
              
               InkWell(highlightColor: ColorsConsts.ccyan,
                 onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TeacherLocation()),
                  );
                  
               },
                 child: const SizedBox(
                   height: 30,
                   width: 69,
                   child:  Padding(
                     padding: EdgeInsets.only(top:4,left: 12),
                     child: Text(
                        'Location',
                        style: TextStyle(fontSize: 12, color: ColorsConsts.black,fontWeight: FontWeight.bold),
                      ),
                   ),
                 ),
               ),
            
              ],
          ),
          Padding(
            padding: const EdgeInsets.only(left:23,),
            child: Divider(color: ColorsConsts.ccyan,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 10),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Class',
                style: TextStyle(color: ColorsConsts.ccyan, fontSize: 18,fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Tutor Required',
                style: TextStyle(color: ColorsConsts.ccyan, fontSize: 18,fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23,right: 23,top: 10,bottom: 20),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Dedicated Resourceful and goal driven proffessional educator with a solid commitmentt  to the social and academic growth & development of every child.',
                style: TextStyle(color: ColorsConsts.black, fontSize: 13,fontWeight: FontWeight.bold),
              ),
            ),
          ),
                Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Subjects',
                style: TextStyle(color: ColorsConsts.ccyan, fontSize: 18,fontWeight: FontWeight.bold),
              ),
            ),
          ),
  
          Padding(
            padding: const EdgeInsets.only(left:13,right: 18),
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
                          Image.asset("assets/g1.png"),
                          Image.asset("assets/g2.png"),
                          Padding(
                            padding: const EdgeInsets.only(bottom:4),
                            child: Image.asset("assets/g3.png"),
                          ),
                        ],
                      );
                    })),
          ),

             Padding(
            padding: const EdgeInsets.only(
                top: 20, bottom: 30, left: 24, right: 24),
            child: Container(
              height: 44, width: 143,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: ColorsConsts.ccyan),
              //alignment: Alignment.center,
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: ColorsConsts.yellow,
                ),
                onPressed: () {
                 },
                child: Text(
                  'Book Now',
                  style: TextStyle(color: ColorsConsts.white, fontSize: 16,
                  fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        

          // ignore: dead_code
                 ])));
  }
}
