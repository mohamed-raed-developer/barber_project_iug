import 'package:final_project/constant/color.dart';
import 'package:final_project/screens/login_screen.dart';
import 'package:final_project/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_language_fonts/google_language_fonts.dart';
import 'package:logger/logger.dart';
import 'package:sign_button/sign_button.dart';

class WelcomeLoginScreen extends StatelessWidget {
  const WelcomeLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            ColorConst.containerColor,
            ColorConst.white,
            // Color(0xff3D5A58).withOpacity(8),
          ],
        )),
        child: Column(
          children: [
            // Image.asset(
            //   'assets/images/logo.png',
            //   fit: BoxFit.fill,
            //   width: double.infinity,
            // ),
            SizedBox(
              height: 300.h,
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
            SizedBox(
              height: 5.h,
            ),
            Text(
              'Barber Shop',
              style: GoogleFonts.getFont(
                'Raleway',
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                color: ColorConst.textColor,
                fontSize: 19.sp,
              ),
            ),
            SizedBox(
              height: 23.h,
            ),
            SignInButton(
                buttonType: ButtonType.facebook,
                onPressed: () {
                  Logger().e('login facebook');
                }),
            SizedBox(
              height: 18.h,
            ),
            SignInButton(
                buttonType: ButtonType.google,
                onPressed: () {
                  Logger().e('login google');
                }),
            SizedBox(
              height: 18.h,
            ),
            MaterialButton(
              minWidth: 235.w,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                side: BorderSide(color: ColorConst.white),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Text(
                'Login',
                style: GoogleFonts.getFont(
                  'Source Sans Pro',
                  fontSize: 17.sp,
                  color: ColorConst.white,
                ),
              ),
            ),
            SizedBox(
              height: 33.h,
            ),
            Text(
              'Don’t have an account?',
              style: GoogleFonts.getFont(
                'Source Sans Pro',
                fontSize: 15.sp,
                color: ColorConst.white,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpScreen(),
                    ));
              },
              child: Text(
                'Create account',
                style: GoogleFonts.getFont(
                  'Source Sans Pro',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: ColorConst.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
