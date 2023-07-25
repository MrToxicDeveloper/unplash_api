import 'package:get/get.dart';
import 'package:insta_api/screens/home/model/home_model.dart';
import 'package:insta_api/utils/api/api_helper.dart';

class HomeController extends GetxController{
  RxList<dynamic> dataList = <dynamic>[].obs;

  apiCalling() async {
    dataList.value = await APIHelper.helper.apiCalling();
  }
}