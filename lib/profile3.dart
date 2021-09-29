import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:multi_select_flutter/chip_display/multi_select_chip_display.dart';
import 'package:multi_select_flutter/dialog/mult_select_dialog.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:student/teacherloc.dart';
import 'package:student/student.dart';
import 'const/color.dart';
import 'login2.dart';

class Profile3 extends StatefulWidget {
  const Profile3({Key? key}) : super(key: key);

  @override
  State<Profile3> createState() => _Profile3State();
}

class _Profile3State extends State<Profile3> {
   List<String> _items =  ['App','Ban','Gra','Ora','wate','Pin'];
  final GlobalKey<FormState> _form=GlobalKey<FormState>();
  TextEditingController namecont= TextEditingController();
  TextEditingController addresscont = TextEditingController();
  TextEditingController numbercont= TextEditingController();
  TextEditingController experiencecont = TextEditingController();
  double width = 0.0;
  double height = 0.0;
  String dropdownlist='select';
   //String? dropdownvl;
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
          child: Form(key: _form,
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
                          padding: EdgeInsets.only(top: 40.0, left: 120),
                          child: Container(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: CircleAvatar(
                                radius: 55,
                                backgroundImage: AssetImage('assets/p.jpg'),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 64, left: 45),
                          child: Image.asset(
                            'assets/icon.png',
                            height: 35,
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
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
                    padding: const EdgeInsets.only(
                      right: 20,
                      left: 20,
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      controller: namecont,
                        decoration: const InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(
                          color: ColorsConsts.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    onFieldSubmitted: (value) {},
                                                  validator: (value)
                                                    {
                                                      if(value!.isEmpty||value==null)
                                                      {
                                                        return 'Please Enter your Name!';
                                                      }
                                                      return null;
                                                    },
                 
                
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
                    child: TextFormField(
                      keyboardType: TextInputType.streetAddress,
                      controller: addresscont,
                        decoration: const InputDecoration(
                      labelText: 'Address',
                      labelStyle: TextStyle(
                          color: ColorsConsts.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    onFieldSubmitted: (value) {},
                                                  validator: (value)
                                                    {
                                                      if(value!.isEmpty||value==null)
                                                      {
                                                        return 'Please Enter your Address!';
                                                      }
                                                      return null;
                                                    },
                 
                
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: numbercont,
                        decoration: InputDecoration(
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(
                          color: ColorsConsts.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                     onFieldSubmitted: (value) {},
                    validator:( value)
                    {
                   if (value!.isEmpty||value== 10||value==null)
                return 'Mobile Number must be of 10 digit';
              else
             return null;
                    },
                
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller:experiencecont ,
                        decoration: const InputDecoration(
                      labelText: 'Experience',
                      labelStyle: TextStyle(
                          color: ColorsConsts.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                     onFieldSubmitted: (value) {},
                            validator: (value) {
                              if (value!.isEmpty||value==null) {
                                return 'Please Enter your Experience!';
                              }
                              return null;
                            },
                         
                
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 21, top: 9),
                    child: Row(
                      children: [
                        const Text(
                          'Interests',
                          style: TextStyle(
                              color: ColorsConsts.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 56.0),
                          child: Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: ColorsConsts.black, width: 2)),
                                     child: MultiSelectDialogField(height: 10,
                                    searchTextStyle: TextStyle(fontSize: 5),
                                    selectedItemsTextStyle: TextStyle(fontSize: 5),
                                    
                                     items: _items.map((e) => MultiSelectItem(e, e)).toList(),
                                  initialValue: [],
        onConfirm: (values) {
          },chipDisplay: MultiSelectChipDisplay(height: 16,chipColor: ColorsConsts.white,
        onTap: (selectedList) {
        setState(() {
          });
        }),
      ),
                          ),
                        ),
                        Column(
                          children: [
                            DropdownButton(items: [
              DropdownMenuItem(
                child: Text("Maths",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Science",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                value: 2,
              ),
               DropdownMenuItem(
                child: Text("English",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                value: 2,
              ),
             DropdownMenuItem(
                child: Text("Social",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                value: 2,
              ),
            
            ],
             
            onChanged: (value) {
              setState(() {
               // _value = value;
              });
            },
                                icon: Padding(
                                  padding: const EdgeInsets.only(right:30),
                                  child: Icon(
                                    Icons.add_circle_outline,
                                    size: 30,
                                    color: ColorsConsts.ccyan,
                                  ),
                                ),
                              
                            ),
     const Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                'Add interests',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: ColorsConsts.black,
                                    fontSize: 10),
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
                              color: ColorsConsts.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 56.0),
                        child: Container(
                          height: 49.8,
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: ColorsConsts.black, width: 2)),
                                  child: MultiSelectDialogField(height: 10,
                                    searchTextStyle: TextStyle(fontSize: 5),
                                    selectedItemsTextStyle: TextStyle(fontSize: 5),
                                    
                                     items: _items.map((e) => MultiSelectItem(e, e)).toList(),
                                  initialValue: [],
        onConfirm: (values) {
          },chipDisplay: MultiSelectChipDisplay(height: 16,chipColor: ColorsConsts.white,
        onTap: (selectedList) {
        setState(() {
          });
        }),
      ),),),
                       
                                 
                //  Column(
                //         children: [
                //             DropdownButton(   
                //               items:_items.map((String items) {
                //        return DropdownMenuItem(
                //            value: items,
                //            child: Text(items)
                //        );
                //   }
                //   ).toList(),
                //    onChanged: (dropdownvalue){
                //   setState(() {
                //     dropdownvalue = dropdownvalue;
                //   });
                // },

              Column(
                children: [
                  DropdownButton(items: [
                  DropdownMenuItem(
                    child: Text("Maths",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("Science",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                    value: 2,
                  ),
                   DropdownMenuItem(
                    child: Text("English",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                    value: 2,
                  ),
             DropdownMenuItem(
                    child: Text("Social",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                    value: 2,
                  ),
            
            ],
             
            onChanged: (value) {
                  setState(() {
                   // _value = value;
                  });
            },                icon: const Padding(
                                  padding: EdgeInsets.only(right: 30),
                                  child: Icon(
                                    Icons.add_circle_outline,
                                    size: 30,
                                    color: ColorsConsts.ccyan,
                                  ),
                                ),
                              ),
                          const Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              'Add Slots',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ColorsConsts.black,
                                  fontSize: 10),
                            ),
                          ),]
                  ),
                        ],
                      )
                    ],
                  ),
                
            ]),
        )));
          
      
  }
}
