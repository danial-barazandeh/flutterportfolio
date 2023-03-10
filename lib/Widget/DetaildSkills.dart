import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterporfolio/Services/MyColors.dart';
import 'package:flutterporfolio/Services/MyStrings.dart';
import 'package:flutterporfolio/Widget/DetaildSkillsCard.dart';
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
        height: 182,
        alignment: Alignment.center,
        color: myColors.backGround1,
        margin: EdgeInsets.symmetric(vertical: 32),
        child: ScrollConfiguration(
            behavior: MyCustomScrollBehavior(),
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 16),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 32,
                ),
                DetailedSkillsCard(
                  "Frontend",
                  "TailWind, JavaScript, React, Vue, Flutter, Blade",
                  key: key,
                ),
                SizedBox(
                  width: 32,
                ),
                DetailedSkillsCard("Backend", "PHP, Next.js, Laravel, WordPress", key: key),
                SizedBox(
                  width: 32,
                ),
                DetailedSkillsCard("Mobile", "Flutter, Java", key: key),
                SizedBox(
                  width: 32,
                ),
                DetailedSkillsCard("Deployment", "cPanel, DirectAdmin, Ubuntu", key: key),
                SizedBox(
                  width: 32,
                ),
                DetailedSkillsCard("Database", "Firebase, MySQL, PostgreSQL", key: key)
              ],
            )));
  }
}
