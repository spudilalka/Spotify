import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spotify/pages/choose%20mode.dart';
import 'package:spotify/pages/get%20started.dart';
import 'package:spotify/pages/reg%20and%20sign%20bloc/reg%20view.dart';
import 'package:spotify/pages/reg%20and%20sign%20bloc/sign%20view.dart';
import 'package:spotify/pages/reg%20or%20sign.dart';
import 'package:spotify/pages/splash%20screen.dart';

void main() async {
  // SharedPreferences.setMockInitialValues({});

  // WidgetsFlutterBinding.ensureInitialized();
  // await Hive.initFlutter();

  // var box = Hive.openBox('theme');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      // theme: ThemeData(
      //   // This is the theme of your application.
      //   //
      //   // Try running your application with "flutter run". You'll see the
      //   // application has a blue toolbar. Then, without quitting the app, try
      //   // changing the primarySwatch below to Colors.green and then invoke
      //   // "hot reload" (press "r" in the console where you ran "flutter run",
      //   // or simply save your changes to "hot reload" in a Flutter IDE).
      //   // Notice that the counter didn't reset back to zero; the application
      //   // is not restarted.
      //   primarySwatch: Colors.blue,
      // ),
      home: const SplasnScreen(),
    );
  }
}
