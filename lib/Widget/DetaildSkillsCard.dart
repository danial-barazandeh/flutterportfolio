import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterporfolio/Services/MyColors.dart';
import 'package:flutterporfolio/Services/MyStrings.dart';
import 'package:flutterporfolio/Widget/DetaildSkillsCardController.dart';
import 'package:get/get.dart';

class DetailedSkillsCard extends GetView<DetailedSkillsCardController> {
  MyColors myColors = Get.find<MyColors>();
  MyStrings myStrings = Get.find<MyStrings>();

  DetailedSkillsCard(this.title, this.content, {super.key});
  final String title;
  final String content;

  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    var shortestSide = MediaQuery.of(context).size.shortestSide;

    var isHovering = false;
    return MouseRegion(
      onEnter: (s){
        controller.setIsHovering(title);
      },
      onExit: (s){
        controller.setIsNotHovering(title);
      },
      child: Obx(
        ()=> AnimatedContainer(
              width: controller.hoveringList.contains(title) ? 200 : 150,
              duration: Duration(milliseconds: 150),
              decoration: BoxDecoration(
                color:myColors.backGround3,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: controller.hoveringList.contains(title) ? myColors.accentColor : myColors.backGround3,
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
                    title,
                    style: TextStyle(color: myColors.textColor2,fontSize: controller.hoveringList.contains(title) ? 18 : 14),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    content,
                    style: TextStyle(color: myColors.textColor, fontSize: controller.hoveringList.contains(title) ? 16 : 12,),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
