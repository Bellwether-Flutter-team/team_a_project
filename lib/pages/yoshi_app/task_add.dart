import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_a_project/routes/app_routes.dart';

class YoshiTaskAddPage extends StatefulWidget {
  YoshiTaskAddPage({Key? key}) : super(key: key);

  @override
  _YoshiTaskAddPageState createState() => _YoshiTaskAddPageState();
}

class _YoshiTaskAddPageState extends State<YoshiTaskAddPage> {
  // const YoshiTaskAddPage({Key? key}) : super(key: key);

  static const _tagOptions = ["タグ1", "タグ2", "タグ3", "タグ4", "タグ5"];
  static const Map<int, String> _weekdays = {
    1: "Mon",
    2: "Tue",
    3: "Wed",
    4: "Thu",
    5: "Fri",
    6: "Sat",
    7: "Sun"
  };
  DateTime _date = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime(2025),
    );
    if (picked != null) {
      setState(() {
        _date = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          size: 15,
                        ),
                        const SizedBox(width: 10),
                        const Text('期限'),
                        const SizedBox(width: 20),
                        SizedBox(
                            width: size.width * 0.3,
                            child: TextButton(
                              style: const ButtonStyle(
                                  alignment: Alignment.centerLeft),
                              onPressed: () => _selectDate(context),
                              child: Text(
                                "${_date.year}/${_date.month}/${_date.day}  ${_weekdays[_date.weekday]}",
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            )),
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
