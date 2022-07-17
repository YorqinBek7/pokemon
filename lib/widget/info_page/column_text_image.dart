import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColumnTextImage extends StatelessWidget {
  final String text;

  const ColumnTextImage({super.key, required this.text});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontFamily: "Spartan",
                fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: 3.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 3.w,
              ),
              Image.asset("assets/images/img4.png"),
              SizedBox(
                width: 4.w,
              ),
              Image.asset("assets/images/img5.png")
            ],
          ),
        ],
      );
}
