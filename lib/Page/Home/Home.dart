import 'package:flutter/material.dart';
import 'package:flutterporfolio/Widget/DetaildSkills.dart';
import 'package:flutterporfolio/Widget/Intro.dart';
import 'package:flutterporfolio/Widget/Skills.dart';
import 'package:get/get.dart';
import '../../Services/MyColors.dart';
import '../../Services/MyStrings.dart';
import 'HomeController.dart';

class Home extends GetView<HomeController> {
  MyColors myColors = Get.find<MyColors>();
  MyStrings myStrings = Get.find<MyStrings>();

  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    var shortestSide = MediaQuery.of(context).size.shortestSide;

    return Scaffold(
        backgroundColor: myColors.backGround1,
        body: ListView(
          children: [
            Intro(),

            Skills(),

            DetailedSkills()
          ],
        ));
  }
}
