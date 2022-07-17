import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon/screens/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        designSize: const Size(414, 896),
        builder: ((context, child) => const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: HomePage(),
            )),
      );
}
