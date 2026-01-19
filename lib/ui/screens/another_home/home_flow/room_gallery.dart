import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/app_assets.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoomGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Container(
            width: 20.w,
            height: 20.h,
            decoration: BoxDecoration(
              color: whiteColor,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: blackColor.withOpacity(0.20),
                  blurRadius: 6,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Icon(Icons.arrow_back_ios_new, size: 20),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Room", style: style18_800),
              20.verticalSpace,
              Container(
                child: Image.asset(AppAssets.room5),
                width: double.infinity,
              ),
              GridView.builder(
                itemCount: 4,
                shrinkWrap: true,

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 8,
                  crossAxisCount: 2,
                ),

                itemBuilder: (context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 0,
                      vertical: 4,
                    ),

                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppAssets.room1),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
              10.verticalSpace,
              Text('Bathroom', style: style18_800),
              20.verticalSpace,
              Container(
                child: Image.asset(AppAssets.room5),
                width: double.infinity,
              ),
              GridView.builder(
                itemCount: 4,
                shrinkWrap: true,

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 8,
                  crossAxisCount: 2,
                ),

                itemBuilder: (context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 0,
                      vertical: 4,
                    ),

                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppAssets.room1),
                          fit: BoxFit.cover,
                        ),
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
