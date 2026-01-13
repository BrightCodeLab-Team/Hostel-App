// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/app_assets.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_basic/core/model/comments.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ComentsModel> comentList = [
      ComentsModel(
        image: AppAssets.img1,
        comment:
            'Great hostel with clean rooms and friendly staff. Perfect for budget travelers',
        name: "Asad",
      ),
      ComentsModel(
        image: AppAssets.img2,
        comment:
            ' Jason Smith, a backpacker who loves exploring new cities and staying in social hostels.',
        name: "Shayan",
      ),
      ComentsModel(
        image: AppAssets.img3,
        comment:
            'Jason Smith, a backpacker who loves exploring new  cities and staying in social hostels. ',
        name: "Sanan",
      ),
    ];
    return ListView.builder(
      shrinkWrap: true,

      itemCount: comentList.length,
      itemBuilder: (context, index) {
        var comment = comentList[index];
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(comment.image),
                    ),
                    5.horizontalSpace,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'David Miller',
                          style: style12_500.copyWith(
                            color: blackColor,
                            fontSize: 14,
                          ),
                        ),
                        10.verticalSpace,
                        SizedBox(
                          height: 20,

                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Image.asset(AppAssets.star);
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Text("3 days ago"),
              ],
            ),

            10.verticalSpace,
            Text(comment.comment),
          ],
        );
      },
    );
  }
}
