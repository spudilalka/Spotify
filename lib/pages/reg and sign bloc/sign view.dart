import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:passwordfield/passwordfield.dart';
import 'package:spotify/pages/reg%20and%20sign%20bloc/reg%20and%20sign%20state.dart';
import 'package:spotify/pages/reg%20or%20sign.dart';
import 'package:spotify/theme.dart';

import 'reg and sign bloc.dart';

class SignPage extends StatefulWidget {
  const SignPage({Key? key}) : super(key: key);
  @override
  _SignPageState createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> with TickerProviderStateMixin {
  Color active = Colors.deepPurple;
  CurTheme them = CurTheme();

  BoxDecoration decor = BoxDecoration(
    color: Colors.deepPurple[400],
    borderRadius: BorderRadius.circular(10),
  );

  @override
  Widget build(BuildContext contex) {
    return BlocProvider(
        create: ((context) => RegOrSignBloc()),
        child: BlocBuilder<RegOrSignBloc, RegOrSignState>(
            builder: (context, state) {
          return Container(
              color: them.getBg(),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegOrSign()));
                              });
                            },
                            child: ClipRect(
                              child: Container(
                                width: 35,
                                height: 37,
                                margin: EdgeInsets.only(left: 5, right: 85),
                                child: new Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: new BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                  child: Icon(
                                    Icons.arrow_back_ios_rounded,
                                    size: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                                width: 110.0,
                                height: 35.0,
                                // padding: EdgeInsets.only(top: 15),
                                alignment: Alignment.center,
                                child: SvgPicture.asset(
                                  "assets/logo.svg",
                                )),
                          ),
                        ],
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    Container(
                        padding: EdgeInsets.only(bottom: 22),
                        child: them.text("Sign In", 30, true)),
                    Container(
                        padding: EdgeInsets.only(bottom: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            them.text("If You Need Any Support ", 12, false),
                            GestureDetector(
                              onTap: () {
                                print('Click Here');
                              },
                              child: them.text("Click Here", 12, false,
                                  Color.fromARGB(255, 66, 200, 60)),
                            )
                          ],
                        )),
                    Card(
                        elevation: 0,
                        child: Container(
                          padding: EdgeInsets.only(),
                          height: 80,
                          width: 350,
                          color: Colors.black12,
                          child: TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              labelText: 'Enter Username Or Email',
                            ),
                          ),
                        )),
                    // Card(
                    //     elevation: 0,
                    //     child: Container(
                    //       padding: EdgeInsets.only(),
                    //       height: 80,
                    //       width: 350,
                    //       child: TextField(
                    //         obscureText: true,
                    //         decoration: InputDecoration(
                    //           border: OutlineInputBorder(
                    //               borderRadius: BorderRadius.circular(20)),
                    //           labelText: 'Password',
                    //         ),
                    //       ),
                    //     )),
                    Card(
                      elevation: 0,
                      child: Container(
                        height: 80,
                        width: 350,
                        color: Colors.black12,
                        padding: EdgeInsets.only(top: 15),
                        child: PasswordField(
                          backgroundColor: Colors.blue.withOpacity(0),
                          hintText: 'Password ',
                          inputDecoration: PasswordDecoration(
                            inputPadding:
                                const EdgeInsets.symmetric(horizontal: 20),
                          ),
                          border: PasswordBorder(
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(15)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(15.7),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(15.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: GestureDetector(
                            onTap: () {
                              print('Recovery Password');
                            },
                            child: them.text(
                              "Recovery Password",
                              12,
                              false,
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: (() {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegOrSign()));
                      }),
                      child: Container(
                        margin: new EdgeInsets.only(
                            left: 0, right: 0, bottom: 0, top: 22),
                        width: 330,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 66, 200, 60),
                        ),
                        child: Center(
                          child: them.text('Continue', 20, false, Colors.white),
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 20, right: 8),
                          child: SvgPicture.asset(
                            "assets/reg or sign/left.svg",
                            fit: BoxFit.none,
                            color: Colors.grey,

                            // alignment: Alignment.bottomLeft,
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.only(
                              top: 20,
                              right: 8,
                            ),
                            child: them.text('Or', 12, false)),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          child: SvgPicture.asset(
                            "assets/reg or sign/right.svg",
                            fit: BoxFit.none,
                            color: Colors.grey,

                            // alignment: Alignment.bottomLeft,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(
                            flex: 2,
                          ),
                          GestureDetector(
                            onTap: () {
                              print('Google');
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                image:
                                    AssetImage("assets/reg or sign/google.png"),
                                fit: BoxFit.none,
                              )),
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          GestureDetector(
                            onTap: () {
                              print('Apple');
                            },
                            child: Container(
                              height: 33,
                              width: 30,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                image:
                                    AssetImage("assets/reg or sign/apple.png"),
                                fit: BoxFit.contain,
                              )),
                            ),
                          ),
                          Spacer(
                            flex: 2,
                          ),
                        ],
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Container(
                      // padding: EdgeInsets.only(top: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          them.text('Not A Member?', 14, false),
                          GestureDetector(
                            onTap: () {
                              print('Register Now');
                            },
                            child: them.text(
                                'Register Now', 14, false, Colors.blueAccent),
                          )
                        ],
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    )
                  ],
                ),
              ));
        }));
  }
}
