import 'package:flutter/material.dart';
import 'package:flutterporfolio/Widget/DetaildSkills.dart';
import 'package:flutterporfolio/Widget/Intro.dart';
import 'package:flutterporfolio/Widget/Skills.dart';
import 'package:get/get.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';
import '../../Services/MyColors.dart';
import '../../Services/MyStrings.dart';
import 'HomeController.dart';

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
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _scrollController,
            children: [
              Intro(),

              Skills(),

              DetailedSkills()
            ],
          ),
        ));
  }
}
