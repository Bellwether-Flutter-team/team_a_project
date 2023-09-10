import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_a_project/routes/app_routes.dart';

class YoshiTaskAddPage extends StatelessWidget {
  const YoshiTaskAddPage({Key? key}) : super(key: key);

  static const _tagOptions = ["タグ1", "タグ2", "タグ3", "タグ4", "タグ5"];
  // DateTime _date = DateTime.now();

  // Future<Null> _selectDate(BuildContext context) async {
  //   final DateTime? picked = await showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime(2021),
  //     lastDate: DateTime(2025),
  //   );
  //   if (picked != null) {
  //     setState(() {
  //       _date = picked;
  //     });
  //   }
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          leading: TextButton(
            child: const Text('戻る'),
            onPressed: () {
              Get.toNamed(AppRoutes.yoshiApp);
            },
          ),
          title: const Text('タスクの追加・編集'),
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            children: [
              const SizedBox(height: 30),
              const TextField(
                  decoration: InputDecoration(
                      hintText: "ここにタイトルを入力",
                      labelText: "タスク名",
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0))),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.local_offer_outlined,
                          size: 15,
                        ),
                        const SizedBox(width: 10),
                        const Text('タグ'),
                        const SizedBox(width: 20),
                        Flexible(
                          child: Autocomplete(
                            optionsBuilder:
                                (TextEditingValue textEditingValue) {
                              if (textEditingValue.text == '') {
                                return const Iterable<String>.empty();
                              }
                              return _tagOptions.where((String option) {
                                return option.contains(
                                    textEditingValue.text.toLowerCase());
                              });
                            },
                            // 入力候補選択時の処理
                            onSelected: (String selection) {
                              debugPrint('You just selected $selection');
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          size: 15,
                        ),
                        const SizedBox(width: 10),
                        const Text('期限'),
                        const SizedBox(width: 20),
                        Flexible(
                          child: TextField(
                            onTap: () => {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // ElevatedButton(
              //   onPressed: () {},
              //   child: const Text('追加'),
              // ),
            ],
          ),
        ));
  }
}
