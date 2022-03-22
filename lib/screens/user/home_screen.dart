import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/color.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  var searchController = TextEditingController();
  var images = [
    'https://cdn-icons.flaticon.com/png/512/4619/premium/4619748.png?token=exp=1646820439~hmac=7176b9c7f0f9685d78c6cb4cf755662b',
    'https://cdn-icons-png.flaticon.com/512/2965/2965367.png',
    'https://cdn-icons-png.flaticon.com/512/410/410406.png',
    'https://cdn-icons-png.flaticon.com/512/2821/2821023.png'
  ];

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
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: searchController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: ColorConst.imageColor),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: ColorConst.imageColor),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: ColorConst.imageColor,
                    ),
                    hintText: 'Search here',
                    hintStyle: TextStyle(
                      color: ColorConst.imageColor,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Services',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 24.sp,
                  color: ColorConst.white,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 80.h,
                child: ListView.builder(
                  primary: false,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: images.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100.h,
                      width: 80.w,
                      child: Column(
                        children: [
                          CircleAvatar(
                            maxRadius: 30,
                            backgroundColor: ColorConst.circleColor,
                            child: CachedNetworkImage(
                              imageUrl: images[index],
                              width: 30.w,
                              height: 30.w,
                              // color: Colors.black,
                            ),
                          ),
                          Text(
                            'Hair Cut',
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 15.sp,
                              color: ColorConst.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Available Barbers',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 24.sp,
                  color: ColorConst.white,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
              SizedBox(
                height: 25.h,
              ),
              ListView.separated(
                itemCount: 5,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (context, i) => SizedBox(height: 10.h),
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: ColorConst.white,
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CachedNetworkImage(
                            height: 40.h,
                            width: 40.w,
                            imageUrl:
                                'https://cdn-icons.flaticon.com/png/512/1144/premium/1144709.png?token=exp=1646554117~hmac=cd6ad6b8f0863f4c6f834765f9e82e6d',
                            errorWidget: (context, _, i) => Container(),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bryan',
                                style: TextStyle(
                                  color: ColorConst.imageColor,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                'euismod tcncidunt ut laoreet\ndolore magn ',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 25,
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      color: ColorConst.containerColor,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                '140 view',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: ColorConst.imageColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
