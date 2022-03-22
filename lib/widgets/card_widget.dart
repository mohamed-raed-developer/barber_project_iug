import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_project/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';

class CardWidgets extends StatefulWidget {
  const CardWidgets({Key? key, required this.isViewRating,this.isSearch = true}) : super(key: key);
  final bool isViewRating;
  final bool isSearch;
  @override
  State<CardWidgets> createState() => _CardWidgetsState();
}

class _CardWidgetsState extends State<CardWidgets> {
  double rating = 3.5;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.isSearch?const EdgeInsets.all(0): const EdgeInsets.all(8),
      height: 170.h,
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(13.r),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              maxRadius: 30.r,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25.r),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://cdn-icons.flaticon.com/png/512/1144/premium/1144709.png?token=exp=1646554117~hmac=cd6ad6b8f0863f4c6f834765f9e82e6d',
                  errorWidget: (context, _, i) => Container(),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              'Cindy',
              style: TextStyle(
                color: ColorConst.white,
                fontSize: 20.sp,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            RatingBar.builder(
              itemSize: 13,
              initialRating: 3,
              minRating: 1,
              ignoreGestures: widget.isViewRating,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                Logger().e('Rating User');
              },
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              '250 Votes',
              style: TextStyle(
                color: const Color(0xffD6D6D6),
                fontSize: 14.sp,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
