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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Colors.black,
                elevation: 0,
                shape: StadiumBorder(
                  side: BorderSide(
                      width: 1, color: Theme.of(context).primaryColor),
                ),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.55,
                height: 45.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: const Text(
                          'DecidePageへ',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onPressed: () {
                Get.toNamed(AppRoutes.decidePage);
              },
            ),
          ],
        ),
      ),
    );
  }
}
