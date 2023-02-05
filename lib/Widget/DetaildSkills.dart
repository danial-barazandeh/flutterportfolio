import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterporfolio/Services/MyColors.dart';
import 'package:flutterporfolio/Services/MyStrings.dart';
import 'package:flutterporfolio/Widget/DetaildSkillsController.dart';
import 'package:flutterporfolio/Widget/Intro.dart';
import 'package:flutterporfolio/Widget/Skills.dart';
import 'package:get/get.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}

class DetailedSkills extends GetView<DetailedSkillsController> {
  MyColors myColors = Get.find<MyColors>();
  MyStrings myStrings = Get.find<MyStrings>();

  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    var shortestSide = MediaQuery.of(context).size.shortestSide;

    return Container(
      width: screenWidth,
      height: 150,
      color: myColors.backGround1,
      margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1, vertical: 32),
      child: ScrollConfiguration(
        behavior: MyCustomScrollBehavior(),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [



            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: myColors.backGround2,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: myColors.backGround3,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Front",
                    style: TextStyle(color: myColors.textColor2),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "HTML,CSS,TailWind, JavaScript, React, Vue, Flutter, Next.js, Blade (Laravel)",
                    style: TextStyle(color: myColors.textColor, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            SizedBox(width: 32,),

            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: myColors.backGround2,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: myColors.backGround3,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Backend",
                    style: TextStyle(color: myColors.textColor2),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "PHP, Next.js, Laravel, WordPress",
                    style: TextStyle(color: myColors.textColor, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),



          ],
        ),
      ),
    );
  }
}
