import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/pages/choose%20mode.dart';
import 'package:spotify/theme.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  CurTheme them = CurTheme();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/ariana.jpg"),
        fit: BoxFit.cover,
        colorFilter: const ColorFilter.mode(
          Color.fromARGB(176, 0, 0, 0),
          BlendMode.hardLight,
        ),
      ) //
          ),
      child: Container(
        margin: new EdgeInsets.fromLTRB(40, 45, 40, 70),
        child: Column(children: [
          Container(
            margin: new EdgeInsets.symmetric(horizontal: 60, vertical: 0),
            child: SvgPicture.asset("assets/logo.svg"),
          ),
          Spacer(
            flex: 1,
          ),
          Container(
            margin: new EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Align(
              alignment: Alignment.center,
              child: Center(
                child: them.text(
                  'Enjoy Listening To Music',
                  24,
                  true,
                  Colors.white,
                ),
              ),
            ),
          ),
          Container(
            margin: new EdgeInsets.symmetric(horizontal: 0, vertical: 21),
            child: Align(
              alignment: Alignment.center,
              child: them.text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
                17,
                false,
                Color.fromARGB(255, 110, 110, 110),
              ),
            ),
          ),
          GestureDetector(
            onTap: (() {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => ChooseMode()));
            }),
            child: Container(
              margin:
                  new EdgeInsets.only(left: 0, right: 0, bottom: 0, top: 30),
              width: max(350, 100),
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 66, 200, 60),
              ),
              child: Center(
                child: them.text(
                  'Get Started ',
                  20,
                  false,
                  Colors.white,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
