import 'dart:math';
import 'dart:ui';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hive/hive.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/pages/get%20started.dart';
import 'package:spotify/pages/reg%20or%20sign.dart';
import 'package:spotify/theme.dart';

class ChooseMode extends StatefulWidget {
  const ChooseMode({super.key});

  @override
  State<ChooseMode> createState() => _ChooseModeState();
}

Color bgColor = Colors.white;

class _ChooseModeState extends State<ChooseMode> {
  int? isLight;
  CurTheme them = CurTheme();

  @override
  void initState() {
    super.initState();

    // getTheme();
  }

  Future<void> setTheme(int a) async {
    // var box = Hive.box('myBox');

    // box.put('name', 'David');

    // var name = box.get('name');

    // print('Name: $name');

/////////////////////////////////////////
    // final box = Hive.box('theme');

    // await box.put('islight', a);

///////////////////////////////////////

    // final SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.setInt('them', a);
  }

  Future<void> getTheme() async {
    // var box = Hive.box('myBox');

    // box.put('name', 'David');

    // var name = box.get('name');

    // print('Name: $name');

////////////////////////////////////////////

    // final box = Hive.box('theme');

    // if (box.isEmpty) {
    //   print('box is empty!!');
    // } else {
    //   isLight = box.get('isLight');
    // }

    ///////////////////////////////////////////

    // final SharedPreferences prefs = await SharedPreferences.getInstance();

    // isLight = await prefs.getInt('them');
    // setState(() {
    //
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: them.getBg(),
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/choose mode.png"),
          fit: BoxFit.cover,
        )),
        child: Container(
          margin: new EdgeInsets.fromLTRB(40, 40, 40, 70),
          child: Column(
            children: [
              Container(
                margin: new EdgeInsets.symmetric(horizontal: 60, vertical: 0),
                child: SvgPicture.asset("assets/logo.svg"),
              ),
              Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: them.text('Choose Mode', 24, true, Colors.white),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  them.setDark();
                                });
                              },
                              child: ClipRect(
                                child: Container(
                                  width: 75,
                                  height: 77,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 35, vertical: 0),
                                  child: new Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: new BoxDecoration(
                                      color: Colors.grey.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(75),
                                    ),
                                    child: new BackdropFilter(
                                      filter: new ImageFilter.blur(
                                          sigmaX: 0.0, sigmaY: 0.0),
                                      child: Icon(
                                        Icons.dark_mode,
                                        size: 40,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            them.text('dark mode', 17, false, Colors.white),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  them.setLight();
                                  // setTheme(3);
                                });
                              },
                              child: ClipRect(
                                child: Container(
                                  width: 75,
                                  height: 77,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 35, vertical: 0),
                                  child: new Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: new BoxDecoration(
                                      color: Colors.grey.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(75),
                                    ),
                                    child: new BackdropFilter(
                                        filter: new ImageFilter.blur(
                                            sigmaX: 0.0, sigmaY: 0.0),
                                        child: Icon(
                                          Icons.light_mode,
                                          size: 40,
                                        )),
                                  ),
                                ),
                              ),
                            ),
                            them.text('light mode', 17, false, Colors.white),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (() {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => RegOrSign()));
                }),
                child: Container(
                  margin: new EdgeInsets.only(
                      left: 0, right: 0, bottom: 0, top: 110),
                  width: max(350, 100),
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 66, 200, 60),
                  ),
                  child: Center(
                    child: them.text('Continue', 20, false, Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
