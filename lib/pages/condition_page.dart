import 'package:flutter/material.dart';
import 'package:team_a_project/states/shopdatacontroler.dart';
import 'package:get/get.dart';

class ConditionPage extends StatelessWidget {
  const ConditionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ShopDateControler shopDateControler = Get.put(ShopDateControler());

    return Scaffold(
      appBar: AppBar(
        title: const Text("これが条件分岐のページです"),
        backgroundColor: Theme.of(context).highlightColor,
      ),
      body: Center(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment(500, 200),
                  child: Container(
                    alignment: Alignment.center,
                    height: 200,
                    width: 200,
                    child: Text(shopDateControler.question.value),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  child: const Text('1', semanticsLabel: '1'),
                  onPressed: () {
                    shopDateControler.questionStateUpdate(0);
                  },
                ),
                ElevatedButton(
                  child: const Text(
                    '2',
                    semanticsLabel: '2',
                  ),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: const Text(
                    '3',
                    semanticsLabel: '3',
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
