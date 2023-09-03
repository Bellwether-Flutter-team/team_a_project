// import 'dart:convert';

import 'package:get/get.dart';
// import 'dart:math';
import 'package:ml_dataframe/ml_dataframe.dart';

class ShopDateControler extends GetxController {
  RxString question = "ご飯食べたいですか？".obs;
  RxInt pageCount = 0.obs;

  increment() {
    pageCount++;
  }

  List<ShopModel> shops = [
    ShopModel("a", 2000, 9, 0),
    ShopModel("b", 2500, 2, 1),
    ShopModel("c", 3000, 4, 0),
    ShopModel("d", 4000, 8, 1),
  ];

  List<QuestionModel> quesions = [
    QuestionModel('ご予算は3000円未満ですか？', 3000, "price"),
    QuestionModel('6名様以下でのご利用ですか？', 6, 'population'),
    QuestionModel('禁煙席をご希望ですか？', 0, 'smoking')
  ];

  dropByValue1(int value, String col) {
    for (int i = 0; i < 3; i++) {
      if (pageCount.value == 0) {
        if (quesions[0].value < shops[i].price) {
          shops.removeAt(i);
        } else {}
      } else if (pageCount.value == 1) {
        if (quesions[1].value < shops[i].population) {
          shops.removeAt(i);
        } else {}
      } else if (pageCount.value == 2) {
        if (quesions[2].value < shops[i].smoke) {
          shops.removeAt(i);
        } else {}
      } else {}
    }
  }

  dropByValue2(int value, String col) {
    for (int i = 0; i < 3; i++) {
      if (pageCount.value == 0) {
        if (quesions[0].value > shops[i].price) {
          shops.removeAt(i);
        } else {}
      } else if (pageCount.value == 1) {
        if (quesions[1].value > shops[i].population) {
          shops.removeAt(i);
        } else {}
      } else if (pageCount.value == 2) {
        if (quesions[2].value > shops[i].smoke) {
          shops.removeAt(i);
        } else {}
      } else {}
    }
  }

  questionStateUpdate(int pagecount) {
    question.value = quesions[pagecount].quesion;
  }

  final dataframe = DataFrame([
    ['name', 'price', 'population', 'smoking'],
    ['a', 2000, 9, 0],
    ['b', 2500, 2, 1],
    ['c', 3000, 4, 0],
    ['d', 4000, 8, 1],
  ]);
}

class QuestionModel {
  String quesion;
  int value;
  String col;
  QuestionModel(this.quesion, this.value, this.col);
}

class ShopModel {
  String name;
  int price;
  int population;
  int smoke;
  ShopModel(this.name, this.price, this.population, this.smoke);
}
