import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.symmetric(horizontal: 30.w),
        child: TextFormField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0.r),
            hintText: "Buscar Pokémon",
            hintStyle: const TextStyle(
              color: Color(0xff838282),
            ),
            fillColor: const Color(0xffe5e5e5),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: const Color(0xffe5e5e5), width: 1.w),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
      );
}
