import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_api/view/home_screen.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
        return const HomeScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/splash_pic.jpg',
            height: height * 0.5,
            fit: BoxFit.cover,
          ),
          SizedBox(height: height * 0.05),
          Text(
            'TOP HEADLINES',
            style: GoogleFonts.amarante(
                letterSpacing: 1, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: height * 0.02),
          const SpinKitChasingDots(
            color: Colors.lightBlue,
          )
        ],
      ),
    );
  }
}
