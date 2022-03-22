import 'package:cached_network_image/cached_network_image.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:final_project/constant/color.dart';
import 'package:final_project/widgets/card_widget.dart';
import 'package:final_project/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_language_fonts/google_language_fonts.dart';
import 'package:logger/logger.dart';

class BookingBarberScreen extends StatefulWidget {
  const BookingBarberScreen({Key? key}) : super(key: key);

  @override
  State<BookingBarberScreen> createState() => _BookingBarberScreenState();
}

class _BookingBarberScreenState extends State<BookingBarberScreen> {
  var _selectedValue;
  var noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.containerColor,
      appBar: AppBar(
        backgroundColor: ColorConst.containerColor,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5, top: 5),
            child: CachedNetworkImage(
              height: 40.h,
              width: 40.w,
              imageUrl:
                  'https://cdn-icons.flaticon.com/png/512/1144/premium/1144709.png?token=exp=1646554117~hmac=cd6ad6b8f0863f4c6f834765f9e82e6d',
              errorWidget: (context, _, i) => Container(),
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: ColorConst.circleColor,
            size: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Your order ',
                  style: TextStyle(
                    fontSize: 24.sp,
                    color: ColorConst.white,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 170.h,
                        decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(13.r),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 15.w,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: ColorConst.circleColor,
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        'https://cdn-icons-png.flaticon.com/512/2821/2821023.png',
                                    width: 30.w,
                                    height: 30.w,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  'Haircut',
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    color: ColorConst.white,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 25.h,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, conscctctue\n rccadipiscing elit, sed diam nonummy nibh\n euismod tcncidunt ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 9.sp,
                                fontWeight: FontWeight.bold,
                                color: ColorConst.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const CardWidgets(isViewRating: true,isSearch: false,),
                    SizedBox(
                      width: 15.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  'Choose your time',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: ColorConst.white,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                //calender
                DatePicker(
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: ColorConst.imageColor,
                  selectedTextColor: Colors.white,
                  daysCount: 7,
                  onDateChange: (date) {
                    // New date selected
                    setState(() {
                      _selectedValue = date;
                    });
                    Logger().e(_selectedValue);
                  },
                ),
                SizedBox(
                  height: 35.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    customTime(
                      isBook: true,
                      onTap: () {},
                      textTime: '9:00-10:00 AM',
                    ),
                    customTime(
                      isBook: false,
                      onTap: () {},
                      textTime: '10:00-11:00 AM',
                    ),
                    customTime(
                      isBook: false,
                      onTap: () {},
                      textTime: '11:00-12:00 PM',
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    customTime(
                      isBook: false,
                      onTap: () {},
                      textTime: '12:00-1:00 PM',
                    ),
                    customTime(
                      isBook: true,
                      onTap: () {},
                      textTime: '1:00-2:00 PM',
                    ),
                    customTime(
                      isBook: true,
                      onTap: () {},
                      textTime: '2:00-3:00 PM',
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    customTime(
                      isBook: false,
                      onTap: () {},
                      textTime: '3:00-4:00 PM',
                    ),
                    customTime(
                      isBook: true,
                      onTap: () {},
                      textTime: '4:00-5:00 PM',
                    ),
                    customTime(
                      isBook: false,
                      onTap: () {},
                      textTime: '5:00-6:00 AM',
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Center(
                  child: MaterialButton(
                    color: ColorConst.imageColor,
                    minWidth: 159.w,
                    height: 50.h,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r)),
                    onPressed: () {
                      bottomSheet();
                    },
                    child: Text(
                      'Booking',
                      style: TextStyle(
                        color: ColorConst.white,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customTime({
    required bool isBook,
    required Function onTap,
    required String textTime,
  }) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        width: isBook ? 80.w : 103.w,
        height: 20.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          color: isBook ? ColorConst.imageColor : Colors.transparent,
        ),
        child: Center(
          child: Text(
            isBook ? 'Booking' : textTime,
            style: GoogleFonts.getFont(
              'Roboto',
              fontSize: 14.sp,
              color: ColorConst.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  void bottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(27.r),
          topLeft: Radius.circular(27.r),
        ),
      ),
      builder: (context) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(
              color: ColorConst.white,
              borderRadius: BorderRadius.circular(50.r),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CachedNetworkImage(
                      imageUrl:
                          'https://cdn-icons.flaticon.com/png/512/1144/premium/1144709.png?token=exp=1646554117~hmac=cd6ad6b8f0863f4c6f834765f9e82e6d',
                      width: 50.w,
                      height: 50.w,
                      errorWidget: (context, _, i) => Container(),
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Text(
                      'Bryan',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: ColorConst.imageColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Center(
                  child: Text(
                    'Do you want to book a time in the \nbarbershop from 9:00-10:00pm\n Please stick to my appointment time',
                    style: TextStyle(
                      fontFamily: 'SFProText-Regular',
                      fontSize: 15.sp,
                      // color: const Color(0xff113260),
                      color: Colors.blueGrey,
                      letterSpacing: -0.6428571624755859,
                      height: 1.0555555555555556,
                    ),
                    textHeightBehavior:
                        const TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Add a Note',
                    style: TextStyle(
                      fontFamily: 'SFProText-Regular',
                      fontSize: 14.sp,
                      color: const Color(0xff6d89af),
                      letterSpacing: -0.5000000152587891,
                      height: 1.3571428571428572,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Write here…',
                      // hintStyle: TextStyle,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.r),
                        borderSide: BorderSide(color: ColorConst.imageColor),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.r),
                        borderSide: const BorderSide(color: Color(0xffD8E1EC)),
                      ),
                    ),
                    controller: noteController,
                    keyboardType: TextInputType.multiline,
                    maxLines: 3,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        color: ColorConst.imageColor,
                        minWidth: 159.w,
                        height: 50.h,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.r)),
                        onPressed: () {},
                        child: Text(
                          'Booking Now',
                          style: TextStyle(
                            color: ColorConst.white,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Expanded(
                      child: MaterialButton(
                        color: ColorConst.containerColor,
                        minWidth: 159.w,
                        height: 50.h,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.r)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            color: ColorConst.white,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Text(
                //   'Do you want to book a time in the barber shop from 9:00-10:00pm Please stick to my appointment time',
                //  style: TextStyle(), ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
