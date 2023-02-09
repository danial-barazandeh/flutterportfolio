import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutterporfolio/Widget/DetaildSkills.dart';
import 'package:flutterporfolio/Widget/Intro.dart';
import 'package:flutterporfolio/Widget/Skills.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';
import '../../Services/MyColors.dart';
import '../../Services/MyStrings.dart';
import 'HomeController.dart';
import 'dart:js' as js;

class Home extends GetView<HomeController> {
  MyColors myColors = Get.find<MyColors>();
  MyStrings myStrings = Get.find<MyStrings>();

  late ScrollController _scrollController;

  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    var shortestSide = MediaQuery.of(context).size.shortestSide;

    _scrollController = ScrollController();

    return Scaffold(
        backgroundColor: myColors.backGround1,
        body: WebSmoothScroll(
          controller: _scrollController,
          child: ListView(physics: const NeverScrollableScrollPhysics(), controller: _scrollController, children: [
            Intro(),
            Skills(),
            DetailedSkills(),
            // Text(MediaQuery.of(context).size.width.toString()),
            CarouselSlider(
              items: [
                1,
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: SizedBox(
                            width: screenWidth > 1400 ? screenWidth > 900 ? screenWidth > 600 ? screenWidth*0.5 : screenWidth*0.8 : screenWidth *0.9 : screenWidth *0.9,
                            height: screenWidth <= 2400 ? screenWidth <= 1200 ? screenWidth <= 900 ? screenWidth <= 700 ? 250 : 350 : 500 : 550 : 10000,
                            child: const Image(
                              image: AssetImage('lib/src/img/mobileWorldSlider.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          width: screenWidth > 1400 ? screenWidth > 900 ? screenWidth > 600 ? screenWidth*0.5 : screenWidth*0.8 : screenWidth *0.9 : screenWidth *0.9,
                          height: screenWidth <= 2400 ? screenWidth <= 1200 ? screenWidth <= 900 ? screenWidth <= 700 ? 250 : 350 : 500 : 550 : 10000,
                          padding: EdgeInsets.all(16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 100,
                                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(color: myColors.accentColor, borderRadius: BorderRadius.all(Radius.circular(16))),
                                child: Text(
                                  "Flutter",
                                  style: TextStyle(color: myColors.backGround2, fontSize: 16, fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(width: 16,),
                              Container(
                                width: 100,
                                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(color: myColors.accentColor, borderRadius: BorderRadius.all(Radius.circular(16))),
                                child: Text(
                                  "Laravel",
                                  style: TextStyle(
                                    color: myColors.backGround2,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(width: 16,),
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () {
                                    js.context.callMethod('open', ['https://github.com/danial-barazandeh/mobileWorld']);
                                  },
                                  child: Container(
                                    width: 100,
                                    alignment: Alignment.center,
                                    height: 35,
                                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                    decoration: BoxDecoration(color: myColors.accentColor, borderRadius: BorderRadius.all(Radius.circular(16))),
                                    child: FaIcon(FontAwesomeIcons.github, color: myColors.backGround2, size: 19),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                enlargeCenterPage: true,
                height: screenWidth <= 2400 ? screenWidth <= 1200 ? screenWidth <= 900 ? screenWidth <= 700 ? 250 : 350 : 500 : 550 : 10000,
              ),
            ),

            SizedBox(height: 32,)

          ]),
        ));
  }
}
