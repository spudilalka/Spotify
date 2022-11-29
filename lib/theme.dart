import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CurTheme {
  bool isLight = true;
  var prefs = SharedPreferences.getInstance();
  CurTheme() {
    isLight = true;
  }

  Color getBg() {
    if (isLight) {
      return Colors.white;
    } else {
      return Color.fromARGB(255, 87, 87, 87);
    }
  }

  void setLight() {
    isLight = true;
  }

  void setDark() {
    isLight = false;
  }

  DefaultTextStyle text(String txt, double size, bool isbold,
      [Color? clr = null]) {
    if (clr != null) {
      return DefaultTextStyle(
        child: Text(
          txt,
          textAlign: TextAlign.center,
        ),
        style: TextStyle(
          fontFamily: 'Satoshi',
          fontWeight: isbold == true ? FontWeight.bold : FontWeight.normal,
          fontStyle: FontStyle.normal,
          color: clr,
          fontSize: size,
        ),
      );
    } else {
      if (isLight) {
        return DefaultTextStyle(
          child: Text(
            txt,
            textAlign: TextAlign.center,
          ),
          style: TextStyle(
            fontFamily: 'Satoshi',
            fontWeight: isbold == true ? FontWeight.bold : FontWeight.normal,
            fontStyle: FontStyle.normal,
            color: Colors.black,
            fontSize: size,
          ),
        );
      } else {
        return DefaultTextStyle(
          child: Text(
            txt,
            textAlign: TextAlign.center,
          ),
          style: TextStyle(
            fontFamily: 'Satoshi',
            fontWeight: isbold == true ? FontWeight.bold : FontWeight.normal,
            fontStyle: FontStyle.normal,
            color: Colors.white,
            fontSize: size,
          ),
        );
      }
    }
  }
}
