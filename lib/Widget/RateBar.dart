import 'package:flutter/material.dart';
import 'package:flutterporfolio/Services/MyColors.dart';
import 'package:flutterporfolio/Services/MyStrings.dart';
import 'package:get/get.dart';
import 'RateBarController.dart';

class RateBar extends GetView<RateBarController> {
  RateBar(this.percentage, this.title);
  final String percentage;
  final String title;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    MyColors myColors = Get.find<MyColors>();
    MyStrings myStrings = Get.find<MyStrings>();
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Container(
        width: shortestSide > 900 ? screenWidth * 0.4 : screenWidth * 0.8,
        height: 25,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(150),
            ),
            BoxShadow(
              color: myColors.backGround3,
              spreadRadius: -3,
              blurRadius: 2.5,
            ),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: FractionallySizedBox(
          widthFactor: (double.parse(percentage) / 100),
          heightFactor: 1,
          child: Container(
            decoration: BoxDecoration(
              color: myColors.accentColor,
              borderRadius: const BorderRadius.all(Radius.circular(16)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(color: myColors.backGround2),
                  ),
                  Text(
                    percentage,
                    style: TextStyle(color: myColors.backGround2),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
