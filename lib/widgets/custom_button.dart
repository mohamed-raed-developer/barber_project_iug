import 'package:final_project/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_language_fonts/google_language_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onPress,
    required this.text,
  }) : super(key: key);
  final Function onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0.w),
      child: MaterialButton(
        color: ColorConst.white,
        minWidth: double.infinity,
        height: 52.h,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: () => onPress(),
        child: Text(
          text,
          style: GoogleFonts.getFont(
            'Roboto',
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            color: ColorConst.containerColor,
            fontSize: 20.sp,
          ),
        ),
      ),
    );
  }
}
