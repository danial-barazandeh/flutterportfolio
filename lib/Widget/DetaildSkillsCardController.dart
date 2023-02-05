import 'package:get/get.dart';

class DetailedSkillsCardController extends GetxController {
  List hoveringList = [].obs;

  void setIsHovering(String title){
    hoveringList.add(title);
    print(hoveringList.toSet());
  }
  void setIsNotHovering(String title){
    hoveringList.remove(title);
    print(hoveringList.toSet());
  }

  bool isHovering(String title){
    if(hoveringList.contains(title)){
      return true;
    }else{
      return false;
    }
  }

}