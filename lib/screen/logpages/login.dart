import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:goldproject/screen/homepage/homepage.dart';
import 'package:goldproject/screen/logpages/forgetpassword.dart';
import 'package:goldproject/screen/logpages/signup.dart';
import 'package:goldproject/screen/shared/bottomnavbar.dart';
import 'package:goldproject/screen/shared/topbar.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}


class _LoginState extends State<Login> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String email = "email";
  String password = "password";
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
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              TopLogoItem(),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Welcome,",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Please sign-in to your account",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 50),
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Email',
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        TextFormField(
                          cursorColor: Colors.grey,
                          controller: emailController,
                          decoration:  InputDecoration(
                            contentPadding:const EdgeInsets.symmetric(
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
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: double.infinity,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ForgetPassword()));

                        },
                        child:const Text(
                          "Forget password ?",
                          style: TextStyle(color: Colors.deepPurple),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.all(16),
                      width: double.infinity,
                      child: InkWell(
                        onTap: () {
                          if (email == emailController.text &&
                              password == passwordController.text) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        HomePage()));

                          } else {

                            Fluttertoast.showToast(
                                msg: "Invalid Username or Password");
                            emailController.text = "";
                            passwordController.text = "";
                          }
                        },
                        child:const Text(
                          "Sign in",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          },
                          child: const Text(

                            "Create an Account",
                            style: TextStyle(fontSize: 16,decoration: TextDecoration.underline),
                          ),
                        )),
                    Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Container(
                            padding:const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(50))),
                            child: const Text(
                              'Or',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 10,),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/facebook.svg', width: 30),
                          const SizedBox(width: 20,),
                          SvgPicture.asset('assets/gmail.svg', width: 30),
                          const SizedBox(width: 20,),
                          SvgPicture.asset('assets/twitter.svg', width: 30),
                          const SizedBox(width: 20,),
                          SvgPicture.asset('assets/linkedin.svg', width: 30),
                        ],
                      ),
                    )
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

