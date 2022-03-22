import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/color.dart';

class InformationWidget extends StatelessWidget {
  const InformationWidget({
    Key? key,
    required this.hint,
    required this.homeText,
    required this.isLocation,
  }) : super(key: key);
  final String hint;
  final String homeText;
  final bool isLocation;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                hint,
                style:
                    TextStyle(fontSize: 14.sp, color: ColorConst.textGreyColor),
              ),
            ),
            Expanded(
              child: Text(
                homeText,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: ColorConst.textSalColor,
                ),
              ),
            ),
            isLocation
                ? Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0.r),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.my_location)),
                )
                : Container(),

          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        const Divider(),
      ],
    );
  }
}
