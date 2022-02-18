import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goldproject/screen/shared/bottomnavbar.dart';
import 'package:goldproject/screen/shared/topbar.dart';

import 'login.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {

  final usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),

      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            TopLogoItem(),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text(
                        "Forget Password?,",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Please enter your email address and we’ll send you instructions to reset your password.",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 30,),

            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      TextFormField(
                        cursorColor: Colors.grey,
                        controller: usernameController,
                        decoration:  InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.shade600,
                              width: 1.5,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade500,
                                width: 1.0,
                              )

                          ),
                          hintText: "Email",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.all(16),
                    width: double.infinity,
                    child: InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Login()));

                        },

                      child:const Text(
                        "Send reset link",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),

                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}

