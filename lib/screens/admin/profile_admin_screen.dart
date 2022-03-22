import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../constant/color.dart';
import '../../widgets/information_widget.dart';

class ProfileAdminScreen extends StatelessWidget {
  ProfileAdminScreen({Key? key}) : super(key: key);
  final List<String> images = [
    "https://uae.microless.com/cdn/no_image.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/81aF3Ob-2KL._UX679_.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgUgs8_kmuhScsx-J01d8fA1mhlCR5-1jyvMYxqCB8h3LCqcgl9Q",
    "https://ae01.alicdn.com/kf/HTB11tA5aiAKL1JjSZFoq6ygCFXaw/Unlocked-Samsung-GALAXY-S2-I9100-Mobile-Phone-Android-Wi-Fi-GPS-8-0MP-camera-Core-4.jpg_640x640.jpg",
    "https://media.ed.edmunds-media.com/gmc/sierra-3500hd/2018/td/2018_gmc_sierra-3500hd_f34_td_411183_1600.jpg",
    "https://hips.hearstapps.com/amv-prod-cad-assets.s3.amazonaws.com/images/16q1/665019/2016-chevrolet-silverado-2500hd-high-country-diesel-test-review-car-and-driver-photo-665520-s-original.jpg",
    "https://media.onthemarket.com/properties/6191869/797156548/composite.jpg",
    "https://media.onthemarket.com/properties/6191840/797152761/composite.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 83.w,
                    height: 83.w,
                    decoration: BoxDecoration(
                      color: ColorConst.imageColor,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_photo_alternate_outlined,
                          color: ColorConst.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Salon  Name',
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: ColorConst.textSalColor,
                        ),
                      ),
                      Text(
                        'Owner : Mohamed hassan',
                        style: TextStyle(
                          fontSize: 11.sp,
                          color: ColorConst.textGreyColor,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: ColorConst.imageColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                'About',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: ColorConst.textGreyColor,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    'Inset essential content to prevent clipping.\nIn general,\ncontent should be centered and\nsymmetrically inset so it looks great in…',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: ColorConst.textGreyColor,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: ColorConst.imageColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35.h,
              ),
              Row(
                children: [
                  Text(
                    'Salon  Information\'s',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: ColorConst.textSalColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: ColorConst.imageColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: const Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0.r,
                    ),
                  ],
                ),
                child: Column(
                  children: const [
                    InformationWidget(
                      hint: 'Address Line 1',
                      homeText: '15 Avenue NYC',
                      isLocation: false,
                    ),
                    InformationWidget(
                      hint: 'Address Line 2',
                      homeText: '',
                      isLocation: false,
                    ),
                    InformationWidget(
                      hint: 'City',
                      homeText: 'New York City',
                      isLocation: false,
                    ),
                    InformationWidget(
                      hint: 'Location',
                      homeText: 'Go location',
                      isLocation: true,
                    ),
                    InformationWidget(
                      hint: 'Phone Number',
                      homeText: '+32 23223 32',
                      isLocation: false,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    'Image Gallery',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: ColorConst.textGreyColor,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: ColorConst.imageColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              MasonryGridView.count(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                itemCount: images.length,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
                itemBuilder: (context, i) => Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.r)),
                  child: Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(14.r),
                        child: CachedNetworkImage(
                          imageUrl: images[i],
                          placeholder: (context, _) => Container(),
                          errorWidget: (context, _, dynamic i) => Container(),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                          color: ColorConst.imageColor,
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
