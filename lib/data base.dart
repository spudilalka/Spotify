import 'package:hive/hive.dart';

class ThemeDB {
  int islight = 0;

  final _myBox = Hive.box('hist');

  // void craeteInitialData() {
  //   histList = [
  //     [url, 'name', 'format', 'path'],
  //     [url, 'name1', 'format', 'path'],
  //   ];
  //   histList.add([url, 'namezz', 'format', 'path']);
  //   //histList[histList.length + 1] = [url, 'name', 'format', 'path'];
  // }

  void loadData() {
    islight = _myBox.get('theme');
  }

  void updateData() {
    _myBox.put('theme', islight);
  }
}
