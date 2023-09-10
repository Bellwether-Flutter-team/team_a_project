import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:team_a_project/routes/app_routes.dart';
import '../../states/yoshiapp_controller.dart';

class YoshiAppPage extends StatelessWidget {
  const YoshiAppPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TaskController taskController = Get.put(TaskController());
    return Obx(
      () => Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            leading: TextButton(
              child: const Text('戻る'),
              onPressed: () {
                Get.back();
              },
            ),
            title: const Text('よしひとのタスク管理アプリ'),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 35, 15, 10),
                  color: const Color.fromARGB(255, 229, 229, 229),
                  child: Row(children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new, size: 25),
                      onPressed: () {
                        taskController.backDate();
                      },
                    ),
                    Expanded(
                        child: Text(
                      "${taskController.date.value.year}年${taskController.date.value.month}月${taskController.date.value.day}日",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    )),
                    IconButton(
                      icon: const Icon(Icons.arrow_forward_ios, size: 25),
                      onPressed: () {
                        taskController.advanceDate();
                      },
                    ),
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 202, 255, 180),
                          // foregroundColor: Color.fromARGB(255, 208, 255, 203),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          fixedSize: Size(150, 30)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.history, size: 20, color: Colors.black),
                          SizedBox(width: 5),
                          Text(
                            '履歴',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )),
                ),
                Container(
                  // 下向きicon、ラベル別/時間順textのcontainer
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 5),
                  margin: EdgeInsets.zero,
                  alignment: Alignment.centerLeft,
                  width: double.infinity, // 左右限界幅で配置
                  child: const Row(
                    children: [
                      Icon(Icons.keyboard_arrow_down, size: 30),
                      Text(
                        '時間順',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  // 水平線
                  height: 1,
                  thickness: 2,
                  color: Colors.black45,
                ),
                Expanded(
                    child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    Container(
                      // color: Color.fromARGB(255, 242, 242, 242),
                      // タスク全体のcontainer
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: const Column(children: [
                        // SizedBox(height: 5),
                        Card(
                          // color: Color.fromARGB(255, 255, 255, 255),
                          child: ListTile(
                            enabled: false,
                            leading: Text('09:00', // ★
                                style: TextStyle(
                                  fontSize: 15,
                                  // color: Colors.black,
                                )),
                            title: Text('朝食を食べる', // ★
                                style: TextStyle(
                                  fontSize: 15,
                                  // color: Colors.black,
                                )),
                            subtitle: Text('タグ1',
                                style: TextStyle(fontSize: 10)), // ★
                            trailing: Icon(Icons.undo, size: 20),
                          ),
                        ),
                        // SizedBox(height: 5),
                        Card(
                          // color: Color.fromARGB(255, 255, 255, 255),
                          child: ListTile(
                            // tileColor: Color.fromARGB(255, 255, 255, 255),
                            leading: Text('11:00', // ★
                                style: TextStyle(
                                  fontSize: 15,
                                  // color: Colors.black,
                                )),
                            title: Text('オンライン会議をする', // ★
                                style: TextStyle(
                                  fontSize: 15,
                                  // color: Colors.black,
                                )),
                            subtitle: Text('タグ2',
                                style: TextStyle(fontSize: 10)), // ★
                            trailing: Icon(Icons.check, size: 20),
                          ),
                        ),
                        // SizedBox(height: 5),
                        Card(
                          child: ListTile(
                            leading: Text('12:00', // ★
                                style: TextStyle(
                                  fontSize: 15,
                                  // color: Colors.black,
                                )),
                            title: Text('昼食を取る', // ★
                                style: TextStyle(
                                  fontSize: 15,
                                  // color: Colors.black,
                                )),
                            subtitle: Text('タグ3',
                                style: TextStyle(fontSize: 10)), // ★
                            trailing: Icon(Icons.check, size: 20),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: Text('15:00', // ★
                                style: TextStyle(
                                  fontSize: 15,
                                  // color: Colors.black,
                                )),
                            title: Text('ランニングをする', // ★
                                style: TextStyle(
                                  fontSize: 15,
                                  // color: Colors.black,
                                )),
                            subtitle: Text('タグ3',
                                style: TextStyle(fontSize: 10)), // ★
                            trailing: Icon(Icons.check, size: 20),
                          ),
                        ),
                        // SizedBox(height: 5),
                        Card(
                          child: ListTile(
                            leading: Text('18:00', // ★
                                style: TextStyle(
                                  fontSize: 15,
                                  // color: Colors.black,
                                )),
                            title: Text('夕食を食べる', // ★
                                style: TextStyle(
                                  fontSize: 15,
                                  // color: Colors.black,
                                )),
                            subtitle: Text('タグ4',
                                style: TextStyle(fontSize: 10)), // ★
                            trailing: Icon(Icons.check, size: 20),
                          ),
                        ),
                        // SizedBox(height: 5),
                        Card(
                          child: ListTile(
                            leading: Text('20:00', // ★
                                style: TextStyle(
                                  fontSize: 15,
                                  // color: Colors.black,
                                )),
                            title: Text('読書をする', // ★
                                style: TextStyle(
                                  fontSize: 15,
                                  // color: Colors.black,
                                )),
                            subtitle: Text('タグ5',
                                style: TextStyle(fontSize: 10)), // ★
                            trailing: Icon(Icons.check, size: 20),
                          ),
                        ),
                        // SizedBox(height: 5),
                        Card(
                          child: ListTile(
                            leading: Text('22:00', // ★
                                style: TextStyle(
                                  fontSize: 15,
                                  // color: Colors.black,
                                )),
                            title: Text('就寝する', // ★
                                style: TextStyle(
                                  fontSize: 15,
                                  // color: Colors.black,
                                )),
                            subtitle: Text('タグ6',
                                style: TextStyle(fontSize: 10)), // ★
                            trailing: Icon(Icons.check, size: 20),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: Text('23:00', // ★
                                style: TextStyle(
                                  fontSize: 15,
                                  // color: Colors.black,
                                )),
                            title: Text('睡眠をとる', // ★
                                style: TextStyle(
                                  fontSize: 15,
                                  // color: Colors.black,
                                )),
                            subtitle: Text('タグ7',
                                style: TextStyle(fontSize: 10)), // ★
                            trailing: Icon(Icons.check, size: 20),
                          ),
                        ),
                      ]),
                    )
                  ],
                ))
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.toNamed(AppRoutes.yoshiAppAddTask);
            },
            child: const Icon(Icons.add),
            backgroundColor: const Color.fromARGB(255, 255, 216, 161),
          )),
    );
  }
}