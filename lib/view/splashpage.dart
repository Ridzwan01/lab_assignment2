import 'dart:async';

import 'package:flutter/material.dart';
import 'package:homestay_raya/view/loginpage.dart';
import 'package:homestay_raya/view/mainpage.dart';
import 'package:homestay_raya/view/registerpage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
void initState(){
  super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (content) => const LoginPage()))
    );
}

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment:  Alignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/splashscreen.png')
            )
          ),
        ),
        //+padding
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Homestay Raya",
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold)
              ),
              CircularProgressIndicator(),
              Text(
              "Version 0.1",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold)
              ),
            ],
          ),
        )
      ],
    );
  }
}