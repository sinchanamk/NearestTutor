import 'package:flutter/material.dart';
import 'package:student/login.dart';

import 'const/color.dart';
import 'login2.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation myanimation;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    myanimation = Tween<double>(begin: 16, end: 24).animate(controller);
    controller.forward().whenComplete(() {
      controller.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: myanimation,
        builder: (context, widget) {
          return Scaffold(
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 80, top: 70, bottom: 40),
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height / 1.7,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'assets/landing.png',
                        fit: BoxFit.cover,
                      )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 30, left: 20, right: 10),
                  child: Container(
                    height: 40,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: ColorsConsts.yellow),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: ColorsConsts.yellow,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text(
                        'Students Login',
                        style: TextStyle(
                            color: ColorsConsts.white,
                            fontSize: myanimation.value,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 25, left: 20, right: 10),
                  child: Container(
                    height: 40,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: ColorsConsts.ccyan),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: ColorsConsts.ccyan,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login2Page()),
                        );
                      },
                      child: Text(
                        'Teachers Login',
                        style: TextStyle(
                            color: ColorsConsts.white,
                            fontSize: myanimation.value,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
