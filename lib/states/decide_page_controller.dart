import 'dart:convert';
import '../pages/decide_page.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DecidePageController extends GetxController {
  RxString shopname = 'まだ選択されていません'.obs;
  RxString shopaddress = ''.obs;
  RxDouble shopplacelatitude = 35.6961868.obs;
  RxDouble shopplacelongitude = 139.4463985.obs;
  RxString targeturl = 'https://www.skylark.co.jp/gusto/'.obs;
  String apikey = 'f69100125abe9612';

  updatestate(String selectedShopName) {
    shopname.value = selectedShopName;
  }

  updatestate1(String selectedShopName) {
    targeturl.value = selectedShopName;
  }
}
