import 'dart:math';
import 'dart:ui';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hive/hive.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/pages/get%20started.dart';
import 'package:spotify/theme.dart';

class RegOrSign extends StatefulWidget {
  const RegOrSign({super.key});

  @override
  State<RegOrSign> createState() => _RegOrSign();
}

Color bgColor = Colors.white;

class _RegOrSign extends State<RegOrSign> {
  int? isLight;
  CurTheme them = CurTheme();
  bool isreg = true;
  bool isSign = false;
  // Color dd = colors

  @override
  void initState() {
    super.initState();

    // getTheme();
  }

  GestureDetector regButton() {
    return GestureDetector(
      onTap: (() {
        if (isreg == true) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => RegOrSign()));
        } else {
          setState(() {
            isreg = true;
            isSign = false;
          });
        }
      }),
      child: Container(
        margin: new EdgeInsets.only(left: 0, right: 0, bottom: 0, top: 30),
        width: 150,
        height: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isreg == true
              ? Color.fromARGB(255, 66, 200, 60)
              : Color.fromARGB(0, 66, 200, 60),
        ),
        child: Center(
          child: them.text(
              'Register',
              20,
              false,
              isreg == true
                  ? Colors.white
                  : them.isLight == true
                      ? Colors.black
                      : Colors.white),
        ),
      ),
    );
  }

  GestureDetector signButton() {
    return GestureDetector(
      onTap: (() {
        if (isSign == true) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => RegOrSign()));
        } else {
          setState(() {
            isreg = false;
            isSign = true;
          });
        }
      }),
      child: Container(
        margin: new EdgeInsets.only(left: 0, right: 0, bottom: 0, top: 30),
        width: 150,
        height: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isSign == true
              ? Color.fromARGB(255, 66, 200, 60)
              : Color.fromARGB(0, 66, 200, 60),
        ),
        child: Center(
          child: them.text(
              'Sign in',
              20,
              false,
              isSign == true
                  ? Colors.white
                  : them.isLight == true
                      ? Colors.black
                      : Colors.white),
        ),
      ),
    );
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
          image: AssetImage("assets/reg billie.png"),
          fit: BoxFit.scaleDown,
          alignment: Alignment.bottomLeft,
        )),
        child: Column(
          children: [
            Spacer(
              flex: 1,
            ),
            SvgPicture.asset(
              "assets/logo.svg",
              fit: BoxFit.fill,
              width: 235,
              alignment: Alignment.bottomLeft,
            ),
            Container(
                padding: EdgeInsets.only(top: 55),
                child: them.text('Enjoy listening to music', 25, true)),
            Container(
                padding: EdgeInsets.only(top: 21, left: 50, right: 50),
                child: them.text(
                    'Spotify is a proprietary Swedish audio streaming and media services provider ',
                    15,
                    false,
                    them.isLight == true ? Colors.black54 : Colors.white54)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                regButton(),
                signButton(),
              ],
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
