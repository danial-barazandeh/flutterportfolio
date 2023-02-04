import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import '../Services/MyColors.dart';
import '../Services/MyStrings.dart';
import 'IntroController.dart';

class Intro extends GetView<IntroController> {
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    MyColors myColors = Get.find<MyColors>();
    MyStrings myStrings = Get.find<MyStrings>();
    var shortestSide = MediaQuery.of(context).size.shortestSide;

    return Column(
      children: [
        Container(
          width: screenWidth,
          padding: EdgeInsets.symmetric(vertical: 32, horizontal: screenWidth * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                myStrings.fullName,
                style: TextStyle(color: myColors.accentColor, fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                myStrings.home,
                style: TextStyle(color: myColors.textColor),
              ),
            ],
          ),
        ),
        shortestSide < 600
            ? Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: SizedBox(
              width: screenWidth,
              child: Image(
                image: AssetImage('lib/src/img/me.png'),
                width: 450,
                height: 450,
                color: myColors.backGround1,
                colorBlendMode: BlendMode.color,
              )),
        )
            : const SizedBox(),
        Container(
          width: screenWidth,
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: shortestSide > 600 ? screenWidth * 0.4 : screenWidth * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "- ${myStrings.hello}",
                      style: TextStyle(color: myColors.accentColor),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      myStrings.imDanialBarazandeh,
                      style: TextStyle(color: myColors.textColor2, fontSize: 20),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: screenWidth,
                      child: Text(
                        myStrings.myInfo,
                        style: TextStyle(
                          color: myColors.textColor,
                          overflow: TextOverflow.visible,
                          // fontSize:  shortestSide > 600 ? 16 : 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(myColors.accentColor)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        child: Text(
                          myStrings.emailMe,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                  ],
                ),
              ),


              shortestSide > 600
                  ? Container(
                  width: screenWidth*0.4,
                  padding: EdgeInsets.all(16),
                  alignment: Alignment.center,
                  child: Image(
                    image: AssetImage('lib/src/img/me.png'),
                    fit: BoxFit.contain,
                    color: myColors.backGround1,
                    colorBlendMode: BlendMode.color,
                  ))
                  : const SizedBox()
            ],
          ),
        ),
      ],
    );
  }

}