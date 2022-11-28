import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/main.dart';
import 'package:spotify/pages/get%20started.dart';

class SplasnScreen extends StatefulWidget {
  const SplasnScreen({Key? key}) : super(key: key);

  @override
  State<SplasnScreen> createState() => _SplasnScreenState();
}

class _SplasnScreenState extends State<SplasnScreen> {
  @override
 void initState(){
  super.initState();
  _navigatetohome();
 }

_navigatetohome()async{
  await Future.delayed(Duration(milliseconds: 3000),(){});
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>GetStarted()));

}


  




  
  // @override
  // void initState() {
  //   // db.loadData();
  //   // print('object');

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.white,

      body:Center(
        // child: Text(
        //   "splash",
        //   style: TextStyle(fontSize: 24),
        // ),

        child: SvgPicture.asset("assets/logo.svg")
        )
      
       
    );
  }
}