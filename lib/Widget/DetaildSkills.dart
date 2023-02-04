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
      height: 100,
      color: myColors.backGround1,
      child: ScrollConfiguration(
        behavior: MyCustomScrollBehavior(),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [

            Container(
              height: 100,
              width: 100,
              child: Text("s"),
              decoration: BoxDecoration(
                  color: myColors.backGround2,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: myColors.backGround3,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
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
