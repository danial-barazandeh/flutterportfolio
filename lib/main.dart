import 'package:flutter/material.dart';
import 'package:flutterporfolio/Services/MyStrings.dart';
import 'package:get/get.dart';
import 'Page/Home/Home.dart';
import 'Page/Home/HomeBinding.dart';
import 'Services/MyColors.dart';

void main() {
  Get.put(MyColors());
  Get.put(MyStrings());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      title: 'Danial Barazandeh',
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () => Home(), binding: HomeBinding()),
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
