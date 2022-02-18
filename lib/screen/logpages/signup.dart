
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goldproject/screen/logpages/successpage.dart';
import 'package:goldproject/screen/shared/bottomnavbar.dart';
import 'package:goldproject/screen/shared/topbar.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();


  bool _obscureText = true;



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),),
      bottomNavigationBar: BottomNavigation(),

      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children:  [
              TopLogoItem(),
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  const [
                        Text(
                          "Welcome,",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Looking for a place or manage a property, we all have to start somewhere",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),


              SizedBox(height: 20,),

              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                    height: 20.0,
                  ),
                    Row(
                      children: [
                        Text("SigUp", style: TextStyle(fontSize: 18, color: Colors.deepPurple),)
                      ],
                    ),

                    SizedBox(
                      height: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Firstname',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        TextFormField(
                          cursorColor: Colors.grey,
                          controller: firstnameController,
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
                            hintText: "Firstname",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lastname',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        TextFormField(
                          cursorColor: Colors.grey,
                          controller: lastnameController,
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
                            hintText: "Lastname",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
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
                          controller: emailController,
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

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          'Password',
                          style: TextStyle(fontSize: 16),
                        ),
                        /* FlatButton(
                      onPressed: _toggle,
                      child: new Text(_obscureText ? Icon(Icons.eyes): "Hide")),,*/
                        SizedBox(
                          height: 5.0,
                        ),
                        TextFormField(

                          cursorColor: Colors.grey.shade100,
                          obscureText: _obscureText,
                          controller: passwordController,
                          decoration:   InputDecoration(

                            contentPadding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 10.0),
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
                            hintText: "Password",
                            border: OutlineInputBorder(),

                            suffixIcon:  GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              child:
                              new Icon(_obscureText ? Icons.visibility : Icons.visibility_off, color: Colors.grey,),

                            ),



                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          'Confirm password',
                          style: TextStyle(fontSize: 16),
                        ),
                        /* FlatButton(
                      onPressed: _toggle,
                      child: new Text(_obscureText ? Icon(Icons.eyes): "Hide")),,*/
                        SizedBox(
                          height: 5.0,
                        ),
                        TextFormField(

                          cursorColor: Colors.grey.shade100,
                          obscureText: _obscureText,
                          controller: confirmpasswordController,
                          decoration:   InputDecoration(

                            contentPadding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 10.0),
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
                            hintText: "Confirm Password",
                            border: OutlineInputBorder(),

                            suffixIcon:  GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              child:
                              new Icon(_obscureText ? Icons.visibility : Icons.visibility_off, color: Colors.grey,),

                            ),



                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 10.0,
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
                                      SuccessPage()));

                        },

                        child:const Text(
                          "Sign Up",
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
      ),
    );
  }
}

