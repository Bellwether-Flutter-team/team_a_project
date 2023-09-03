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

  List<QuestionModel> quesions = [
    QuestionModel('ご予算は3000円未満ですか？', 3000, "price"),
    QuestionModel('6名様以上でのご利用ですか？', 6, 'population'),
    QuestionModel('禁煙席をご希望ですか？', 0, 'smoking')
  ];

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
  generateQuestion() {
    // var series = dataframe.series;
    // var random = new Random();
    // // var randomElem = series[random.nextInt(series.length)];
    // double ave =
    //     (randomElem[1] + randomElem[2] + randomElem[3] + randomElem[4]) / 4;
  }
}

class QuestionModel {
  String quesion;
  int value;
  String col;
  QuestionModel(this.quesion, this.value, this.col);
}
