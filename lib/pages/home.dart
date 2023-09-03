import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_routes.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: const Text(
                          'よしひとのアプリ',
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
                Get.toNamed(AppRoutes.yoshiApp);
              },
            ),
            const SizedBox(
              height: 30,
            ),
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
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: const Text(
                          'ConditionPageへ',
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
                Get.toNamed(AppRoutes.conditionPage);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                foregroundColor: Colors.black,
                elevation: 0,
                shape: StadiumBorder(
                  side: BorderSide(
                      width: 1,
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.55,
                height: 45.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: const Text(
                          'りくやのアプリ',
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
