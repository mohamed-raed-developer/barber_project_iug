import 'package:final_project/constant/color.dart';
import 'package:final_project/widgets/custom_button.dart';
import 'package:final_project/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_language_fonts/google_language_fonts.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var key = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConst.containerColor,
        body: Center(
          child: SingleChildScrollView(
            child: Form(
              key: key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  Center(
                    child: Text(
                      'Create account',
                      style: GoogleFonts.getFont(
                        'Roboto',
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        color: ColorConst.white,
                        fontSize: 20.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 33.h,
                  ),
                  CustomTextFormField(
                    controller: nameController,
                    hintText: 'Full Name',
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  CustomTextFormField(
                    controller: emailController,
                    hintText: 'Email',
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  CustomTextFormField(
                    controller: passwordController,
                    hintText: 'Password',
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  CustomTextFormField(
                    controller: phoneController,
                    hintText: 'Phone Number',
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Jender',
                      style: GoogleFonts.getFont(
                        'Roboto',
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        color: ColorConst.white,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: 0,
                        onChanged: (value) {},
                      ),
                      Text(
                        'Male',
                        style: GoogleFonts.getFont(
                          'Roboto',
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.normal,
                          color: ColorConst.white,
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(
                        width: 37.w,
                      ),
                      Radio(
                        value: 1,
                        groupValue: 1,
                        onChanged: (value) {},
                      ),
                      Text(
                        'Female',
                        style: GoogleFonts.getFont(
                          'Roboto',
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.normal,
                          color: ColorConst.white,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 57.h,
                  ),
                  CustomButton(
                    text: 'SignUp',
                    onPress: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
