import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:goldproject/screen/shared/bottomnavbar.dart';
import 'package:goldproject/screen/shared/topbar.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 16,),
        child: Column(
          children: [
            TopLogoItem(),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Welcome Deji,",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Your details have been verified, It’s a pleasure to have you onboard.",
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(height: 20),
                      Text(
                          "Let’s take the first step together in getting the right property out there for you.",
                          style: TextStyle(fontSize: 14)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(top: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/logo.svg',

                    color: Colors.deepPurple,
                    width: 100,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
