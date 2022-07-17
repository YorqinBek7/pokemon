import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon/screens/home_page.dart';
import 'package:pokemon/widget/home_page/text_field.dart';
import 'package:pokemon/widget/info_page/bottom_container_texts.dart';
import 'package:pokemon/widget/info_page/buttom_container_column_icons.dart';
import 'package:pokemon/widget/info_page/buttons.dart';
import 'package:pokemon/widget/info_page/column_text_image.dart';

class InfoPage extends StatefulWidget {
  final String number;
  final String name;
  final String imagepath;
  final String height;
  final String weight;
  final String circle1;

  const InfoPage({
    super.key,
    required this.number,
    required this.name,
    required this.imagepath,
    required this.height,
    required this.weight,
    required this.circle1,
  });

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Image.asset("assets/images/pokemon.png"),
              SizedBox(
                height: 30.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomePage(),
                                  ))
                            },
                        child: const Icon(Icons.arrow_back_ios)),
                    const Expanded(child: CustomTextField()),
                    const Icon(Icons.settings)
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Stack(children: [
                Container(
                  margin: EdgeInsets.only(top: 75.h, right: 10.w, left: 10.w),
                  width: double.infinity,
                  height: 205.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: const Color(0xffFC7CFF),
                  ),
                ),
                Positioned(
                    top: 0.h,
                    left: 25.w,
                    right: 15.w,
                    bottom: 0.h,
                    child: Image.network(
                      widget.imagepath,
                      fit: BoxFit.fill,
                    )),
                Positioned(
                  left: 0.w,
                  right: 0.w,
                  top: 35.h,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 13.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5.r),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.r),
                              color: const Color(0xff0083fc)),
                          child: Text(
                            "#${widget.number}",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w800,
                                fontFamily: "Spartan"),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            color: const Color(0xfffca600),
                          ),
                          child: Text(
                            widget.name,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w800,
                                fontFamily: "Spartan"),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
              SizedBox(
                height: 22.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CustomButton(
                    color: Color(0xfffca600),
                    text: "Fuego",
                  ),
                  CustomButton(
                    color: Color(0xff0083fc),
                    text: "Volador",
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 15.h, left: 10.w),
                  decoration: BoxDecoration(
                    color: const Color(0xfffa5afd),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.r),
                      topRight: Radius.circular(50.r),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ColumnText(
                                text: "Altura",
                                titletext: widget.height,
                              ),
                              const ColumnText(
                                text: "Categoria",
                                titletext: "Liama",
                              ),
                              ButtomContainerColumn(
                                text: "Debilidad",
                                titletext: widget.circle1,
                                iconColor1: Colors.blue,
                              )
                            ]),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 25.w,
                          ),
                          ColumnText(text: "Peso", titletext: widget.weight),
                          SizedBox(
                            width: 45.w,
                          ),
                          const ColumnTextImage(text: "Sexo")
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 25.w,
                          ),
                          const ColumnText(
                              text: "Habilidades", titletext: "Mar Liamas"),
                          SizedBox(
                            width: 30.w,
                          ),
                          Image.asset(
                            "assets/images/img3.png",
                            width: 210.w,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
