import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:goldproject/screen/dashboard/dashboardscreen.dart';
import 'package:goldproject/screen/landingpage/landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    //TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), (){
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_)=>LandingPage() ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        width: double.infinity,
        height: double.infinity,
        color: Colors.deepPurple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

          SvgPicture.asset('assets/logo.svg', width: 100,),
            const SizedBox(height: 25,),
            const Text('Property', style: TextStyle(fontSize: 50.0,color: Colors.white, fontWeight: FontWeight.w400)),
            const SizedBox(height: 10,),
          //  const CircularProgressIndicator(
          //    color: Colors.white,
          //  )

          ],
        ),
      ),
    );
  }
}
