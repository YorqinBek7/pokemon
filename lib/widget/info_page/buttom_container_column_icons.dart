import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtomContainerColumn extends StatelessWidget {
  final String text;
  final String titletext;
  final Color iconColor1;

  const ButtomContainerColumn({
    super.key,
    required this.text,
    required this.titletext,
    required this.iconColor1,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 3.w,
                  ),
                  Icon(
                    Icons.circle,
                    color: iconColor1,
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
          ),
        ],
      );
}
