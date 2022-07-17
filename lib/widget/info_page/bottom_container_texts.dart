import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColumnText extends StatelessWidget {
  final String text;
  final String titletext;

  const ColumnText({
    super.key,
    required this.text,
    required this.titletext,
  });

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
              Text(
                titletext,
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18.sp,
                    fontFamily: "Spartan",
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ],
      );
}
