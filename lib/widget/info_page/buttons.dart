import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  const CustomButton({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r), color: color),
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 59.5.h),
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontFamily: "Spartan",
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
}
