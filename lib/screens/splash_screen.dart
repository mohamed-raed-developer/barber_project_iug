import 'dart:async';

import 'package:final_project/constant/color.dart';
import 'package:final_project/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_language_fonts/google_language_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() {
    Timer(const Duration(seconds: 5), () async {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const WelcomeLoginScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/images/logo.png'),
          ),
          Text(
            'Welcome',
            style: GoogleFonts.getFont(
              'Raleway',
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.normal,
              color: ColorConst.white,
              fontSize: 26.sp,
            ),
          ),
          Text(
            'Barber Shop',
            style: GoogleFonts.getFont(
              'Segoe Script',
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.normal,
              color: ColorConst.textColor,
              fontSize: 19.sp,
            ),
          ),
        ],
      ),
    );
  }
}
