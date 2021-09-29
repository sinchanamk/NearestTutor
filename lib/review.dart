import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:student/const/color.dart';

class Review extends StatefulWidget {
  const Review({Key? key}) : super(key: key);

  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConsts.white,
      appBar: AppBar(
        backgroundColor: ColorsConsts.yellow,
        title: Text(
          'Book Now',
          style: TextStyle(color: ColorsConsts.white, fontSize: 18),
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
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 110, top: 10),
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
            const Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: Text(
                'Mr. Jennifer',
                style: TextStyle(
                    fontSize: 16,
                    color: ColorsConsts.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 120.0, top: 20),
                  child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: ColorsConsts.yellow,
                          width: 3.0,
                        ),
                      ),
                      child: const Text(
                        '40',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ColorsConsts.black,
                            fontSize: 16),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 49.0, top: 20),
                  child: Container(
                      alignment: Alignment.center,
                      height: 41,
                      width: 41,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: ColorsConsts.yellow,
                          width: 3.0,
                        ),
                      ),
                      child: const Text(
                        '5km',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ColorsConsts.black,
                            fontSize: 15),
                      )),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 121.0, top: 7),
                  child: SizedBox(
                    height: 20,
                    width: 57,
                    child: Text(
                      'Reviews',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 34, top: 7),
                  child: Container(
                    height: 20,
                    width: 43,
                    child: Text(
                      'Rating',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, right: 23.0, top: 6),
              child: Divider(
                color: ColorsConsts.black,
                thickness: 1,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 8.0,
                  ),
                  child: Text(
                    'Ratings',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorsConsts.yellow,
                        fontSize: 17),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                  child: RatingBar.builder(
                    itemSize: 25,
                    initialRating: 3.5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    bottom: 15,
                  ),
                  child: Text(
                    'Reviews',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorsConsts.yellow,
                        fontSize: 17),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                  child: Container(
                    height: 160,
                    width: 500,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: ColorsConsts.black)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        maxLines: 12,
                        decoration: InputDecoration(
                          hintText: 'Start typing...',
                          hintStyle: TextStyle(color: ColorsConsts.grey),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 10, left: 13, right: 23),
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
                        'Post',
                        style: TextStyle(
                            color: ColorsConsts.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
