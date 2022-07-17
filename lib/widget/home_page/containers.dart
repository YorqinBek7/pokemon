import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Containers extends StatelessWidget {
  final String index;
  final String name;
  final String imagepath;
  const Containers(
      {super.key,
      required this.index,
      required this.name,
      required this.imagepath});

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.h),
            padding: EdgeInsets.all(10.r),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17.r),
                color: const Color(0xffFC7CFF)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(10.r),
                  width: 177.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: const Color(0xff676767),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "#$index",
                        style: TextStyle(
                            color: const Color(0xffF993FB),
                            fontSize: 13.r,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Spartan"),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Expanded(
                        child: Text(
                          name,
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Spartan"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -20,
            left: 0.w,
            bottom: 40.h,
            right: 0.w,
            child: Container(
              child: Image.network(
                imagepath,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ],
      );
}
