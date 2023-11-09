import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 4), (){
      Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));

    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/LOGO.jpg',
              height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const CircularProgressIndicator.adaptive(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              )
          ],
        ),
      ),
    );
  }
}