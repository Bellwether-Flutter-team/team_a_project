import 'package:flutter/material.dart';

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
            const SizedBox(
              height: 70,
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Ink.image(
                        image:
                            const AssetImage("assets/images/icon_akinator.png"),
                        height: 300, // この高さを固定値じゃなくて親widgetの半分の高さにしたい
                        width: 300,
                        fit: BoxFit.fill,
                      ),
                      const Positioned(
                        bottom: 16,
                        right: 16,
                        left: 16,
                        child: Text(
                          '',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16).copyWith(bottom: 0),
                    child: const Text(
                      '2人以上で行きますか？',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16).copyWith(bottom: 0),
                    child: const Text(
                      '1：はい   2:いいえ　3:どちらでもない',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Card(
            //       // alignment: Alignment.center,
            //       // height: 200,
            //       // width: 200,
            //       // decoration: BoxDecoration(
            //       //   border: Border.all(color: Colors.black),
            //       // ),
            //       child: Expanded(
            //           child: const Text(
            //         '人数は何人を予定していますか？',
            //         style: TextStyle(fontSize: 25),
            //       )),
            //     ),
            //   ],
            // ),
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
