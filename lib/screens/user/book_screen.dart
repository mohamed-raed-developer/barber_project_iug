import 'package:final_project/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_language_fonts/google_language_fonts.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConst.containerColor,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Barber Shop',
                style: TextStyle(
                  fontFamily: 'Segoesc',
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.normal,
                  color: ColorConst.textColor,
                  fontSize: 32.sp,
                ),
              ),
              Text(
                'Booking app',
                style: TextStyle(
                  fontFamily: 'Segoesc',
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.normal,
                  color: ColorConst.white,
                  fontSize: 18.sp,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Image.asset(
                'assets/images/person.png',
              ),
              Expanded(
                child: Container(
                  // height: 230,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorConst.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(31.r),
                        topRight: Radius.circular(31.r)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet, construct ccadipiscing elit, sed diam nonummy nibh euismod tcncidunt ut laoreet dolore magn aliquam erat volutpat. ',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Cairo',
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          color: const Color(0xff18224B),
                          fontSize: 18.sp,
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      MaterialButton(
                        color: ColorConst.textColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(31.r),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Book Now',
                          style: GoogleFonts.getFont(
                            'Cairo',
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            color: const Color(0xff18224B),
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
