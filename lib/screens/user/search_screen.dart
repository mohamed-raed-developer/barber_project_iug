import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:final_project/constant/color.dart';
import 'package:final_project/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.containerColor,
      appBar: AppBar(
        backgroundColor: ColorConst.containerColor,
        elevation: 0.0,
        actions: [
          AnimSearchBar(
            width: 300.w,
            color: ColorConst.containerColor,
            style: const TextStyle(color: Colors.black),
            textController: searchController,
            onSuffixTap: () {
              searchController.clear();
            },
          ),
          PopupMenuButton(
            child: const Icon(Icons.my_location,size: 20,),
            itemBuilder: (context) {
              return List.generate(5, (index) {
                return PopupMenuItem(
                  child: Text('${index * 100} M'),
                );
              });
            },
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
            ),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return CardWidgets(isViewRating: true,);
            }
        ),
      ),
    );
  }
}
