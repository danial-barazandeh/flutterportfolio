import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterporfolio/Widget/RateBar.dart';
import 'package:get/get.dart';

import '../Services/MyColors.dart';
import '../Services/MyStrings.dart';
import 'SkillsController.dart';

class Skills extends GetView<SkillsController> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    MyColors myColors = Get.find<MyColors>();
    MyStrings myStrings = Get.find<MyStrings>();
    var shortestSide = MediaQuery
        .of(context)
        .size
        .shortestSide;

    return Container(
      height: 400,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
      width: screenWidth,
      color: myColors.backGround2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              shortestSide < 900
                  ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    myStrings.skills,
                    style: TextStyle(color: myColors.textColor2, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: screenWidth * 0.3,
                    height: 4,
                    color: myColors.accentColor,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                ],
              )
                  : SizedBox(),

              RateBar("100","Mobile"),
              const SizedBox(
                height: 16,
              ),
              RateBar("90","Backend"),
              const SizedBox(
                height: 16,
              ),
              RateBar("80","Frontend"),
              const SizedBox(
                height: 16,
              ),
              RateBar("60","Deploying"),
            ],
          ),
          shortestSide > 900
              ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                myStrings.skills,
                style: TextStyle(color: myColors.textColor2, fontSize: 20),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: screenWidth * 0.3,
                height: 4,
                color: myColors.accentColor,
              )
            ],
          )
              : SizedBox(),
        ],
      ),
    );
  }
}