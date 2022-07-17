import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokemon/data/model/main_data/main_data.dart';
import 'package:http/http.dart' as http;
import 'package:pokemon/screens/info_page.dart';
import 'package:pokemon/widget/home_page/containers.dart';
import 'package:pokemon/widget/home_page/text_field.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<MainData> getPokemonData() async {
    try {
      http.Response response = await http.get(Uri.parse(
          "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json"));

      var mainData = jsonDecode(response.body);

      return MainData.fromJson(mainData);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 120.h,
          backgroundColor: Colors.white,
          title: Image.asset(
            "assets/images/pokemon.png",
            width: 252.w,
            height: 88.h,
          ),
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.dark),
          centerTitle: true,
        ),
        body: FutureBuilder<MainData>(
          future: getPokemonData(),
          builder: (BuildContext context, AsyncSnapshot<MainData> snapshot) {
            if (snapshot.hasData) {
              var data = snapshot.data!;
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 17.w, vertical: 5.h),
                child: Column(
                  children: [
                    const CustomTextField(),
                    SizedBox(
                      height: 40.h,
                    ),
                    Expanded(
                      child: GridView.builder(
                        itemCount: data.pokemon.length,
                        physics: const BouncingScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 3.h,
                            crossAxisSpacing: 15.w,
                            childAspectRatio: 1.0.r),
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: (() => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => InfoPage(
                                        number: data.pokemon[index].num,
                                        name: data.pokemon[index].name,
                                        imagepath: data.pokemon[index].img,
                                        height: data.pokemon[index].height,
                                        weight: data.pokemon[index].weight,
                                        circle1:
                                            data.pokemon[index].weaknesses[0],
                                      ),
                                    ))
                              }),
                          child: Containers(
                            imagepath: data.pokemon[index].img,
                            name: data.pokemon[index].name,
                            index: data.pokemon[index].num,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            } else if (snapshot.hasError) {
              return const Center(child: Text("Error"));
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      );
}
