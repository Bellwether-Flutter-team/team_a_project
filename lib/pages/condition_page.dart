import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_routes.dart';

class ConditionPage extends StatelessWidget {
  const ConditionPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("これが条件分岐のページです"),
        backgroundColor: Theme.of(context).highlightColor,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  // alignment: Alignment.center,
                  // height: 200,
                  // width: 200,
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.black),
                  // ),
                  child: Expanded(
                      child: const Text(
                    '人数は何人を予定していますか？',
                    style: TextStyle(fontSize: 25),
                  )),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const SizedBox(
                      width: 30, child: Text('1', semanticsLabel: '1')),
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                  child: const SizedBox(
                    width: 30,
                    child: Text(
                      '2',
                      semanticsLabel: '2',
                    ),
                  ),
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                  child: const SizedBox(
                    width: 30,
                    child: Text(
                      '3',
                      semanticsLabel: '3',
                    ),
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
