// taskの状態を管理するためのコードを配置する場所

// 管理するもの
// 日付
// タスクの内容：”モデル”
//   タグ番号
//   締め切り
//   タスク名
//   解決済みか
// どのデータベースを使うかが重要
//   理由：DBによって対応できるデータ型やトランザクションのタイミングなどが異なるため
//   おおよその分類：
//     ローカルだけで完結するもの
//     クラウドで完結するもの：FirebaseやAWSなど
//     両者が混在するもの→大規模なデータを用いるもの/複雑なデータモデルが混在するもの

import 'package:get/get.dart';

// 以下はサンプルというか参考コード
class TaskController extends GetxController {
  // 状態とは『変数（の初期値）』と『変数の変化』の二つの観点で考える
  // 『状態の変化』とは関数による更新であり、例えばフロントエンドのボタンの操作に埋め込まれた関数などがある

  // int a = 0;
  // var b = 10;

  // // 変数の定義
  // RxInt taskLength = 0.obs;
  // RxString tasktitle = "".obs; // Getx
  // String title = ""; // 通常
  // var task = 0.obs; // Varで定義するとなんでも受け入れる

  // RxString date = "2023/08/20".obs;
  // //関数の定義
  // // 帰り値によって定義が変わる

  // RxInt calcNum(int a) {
  //   taskLength += a;
  //   return taskLength;
  // }

  // String returnDate() {
  //   return date.value;
  // }

  // void increment(int a) {
  //   taskLength.value += a;
  //   update();
  // }
  Rx<DateTime> date = DateTime.now().obs;

  void advanceDate() {
    date.value = date.value.add(const Duration(days: 1));
    update();
  }

  void backDate() {
    date.value = date.value.subtract(const Duration(days: 1));
    update();
  }
}

class TaskModel {
  int task_id;
  String task_name;
  DateTime date_register;
  DateTime date_deadline;
  int? tag_id;
  String? tag_name;
  int state;

  TaskModel(
    this.task_id,
    this.task_name,
    this.date_register,
    this.date_deadline,
    this.tag_id,
    this.tag_name,
    this.state,
  );
}
