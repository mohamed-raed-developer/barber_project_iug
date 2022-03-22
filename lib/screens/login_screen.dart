import 'package:final_project/constant/color.dart';
import 'package:final_project/widgets/custom_button.dart';
import 'package:final_project/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_language_fonts/google_language_fonts.dart';
import 'package:logger/logger.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var key = GlobalKey<FormState>();
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConst.containerColor,
        body: SingleChildScrollView(
          child: Center(
            child: Form(
              key: key,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Login',
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
                    height: 23.h,
                  ),
                  CustomTextFormField(
                    controller: emailController,
                    hintText: 'Enter your Email',
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextFormField(
                    controller: passwordController,
                    hintText: 'Enter your password',
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forget password ?',
                      style: GoogleFonts.getFont(
                        'Roboto',
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        color: ColorConst.white,
                        fontSize: 20.sp,
                      ),
                    ),
                  ),
                  CheckboxListTile(
                    value: rememberMe,
                    onChanged: (value) {
                      setState(() {
                        rememberMe = value!;
                      });
                    },
                    title: Text(
                      'Remember Me',
                      style: GoogleFonts.getFont(
                        'Roboto',
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,
                        color: ColorConst.white,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                  CustomButton(
                    text: 'Login',
                    onPress: () {
                      Logger().e(MediaQuery.of(context).size.height);
                      //712
                      Logger().e(MediaQuery.of(context).size.width);
                      //360
                      //430/1.2
                    },
                  ),
                  // CardWidgets(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
