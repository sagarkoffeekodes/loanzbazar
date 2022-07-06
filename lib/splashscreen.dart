import 'dart:async';
import 'package:flutter/material.dart';
import 'FormSubmit/signuppage.dart';


class Splash extends StatefulWidget {
  const Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {



  check() {

    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => SignupPage()));
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 6), () {
      check();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
         height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,


        child: Image.asset("assets/images/Loanz PNG.png"),

      ),


    );
  }

}

