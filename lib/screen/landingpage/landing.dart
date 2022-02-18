
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:goldproject/screen/logpages/login.dart';
import 'package:goldproject/screen/shared/topbar.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:const EdgeInsets.all(20.0),
        width: double.infinity,
        height: double.infinity,
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TopLogoItem(),
            SizedBox(height: 30,),
            Container(
              height: 80,

              padding: EdgeInsets.symmetric(horizontal: 24.0,vertical: 16.0),
              decoration:  BoxDecoration(

                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    spreadRadius: 1,
                    blurRadius: 6,// changes position of shadow
                  ),
                ],
              ),
              child: Text('Home of everything, real estate and hospitality',  style: TextStyle(fontSize: 16.0,)),
            ),
            SizedBox(height: 30,),
            Container(

              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 24.0,vertical: 16.0),

              decoration:  BoxDecoration(
                color: Colors.white,
                borderRadius:const BorderRadius.all(
                    Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    spreadRadius: 1,
                    blurRadius: 6,// changes position of shadow
                  ),
                ],
              ),

              child: Text('Property owner get to manage and showcase their property',  style: TextStyle(fontSize: 16.0,)),
            ),

            SizedBox(height: 30,),
            Container(

              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  SvgPicture.asset('assets/landingpage.svg', width: 250),
                  SizedBox(height: 30,),
                  InkWell(
                    onTap: (){
                      Navigator.of(context)
                          .pushReplacement(MaterialPageRoute(builder: (_)=>Login () ));
                        },
                      child: Container(
                        decoration: const BoxDecoration(

                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.all(
                                Radius.circular(10)
                            )),
                        padding: EdgeInsets.all(16.0),
                        width: double.infinity,
                        child:   const Text('Get Started',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16.0, color: Colors.white)),

                      ))



                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
