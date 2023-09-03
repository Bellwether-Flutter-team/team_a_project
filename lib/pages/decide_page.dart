import 'package:flutter/material.dart';
// import 'package:google_maps/google_maps.dart';
import '../routes/app_routes.dart';
import '../states/decide_page_controller.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DecidePage extends StatelessWidget {
  const DecidePage({Key? key}) : super(key: key);
  final url = 'f69100125abe9612';
  @override
  Widget build(BuildContext context) {
    ShopDataController shopDataController = Get.put(ShopDataController());
    DecidePageController decidepagecontroller = Get.put(DecidePageController());
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          // title: Text(decidepagecontroller.shopname.value),
          title: const Text("ガスト 国立駅前店（から好し取扱店）"),
          backgroundColor: Theme.of(context).highlightColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 300,
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                      zoom: 17, //ズーム
                      target: LatLng(
                          decidepagecontroller.shopplacelatitude.value,
                          decidepagecontroller
                              .shopplacelongitude.value), //経度,緯度
                      tilt: 45.0, //上下の角度
                      bearing: 90.0),
                ),
              ),
              SizedBox(
                width: 300,
                height: 100,
                child: ElevatedButton(
                  onPressed: () {
                    final url = Uri.parse(decidepagecontroller.targeturl.value);
                    launchUrl(url);
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.web),
                      Expanded(child: SizedBox()),
                      Text('お店を見る/予約する'),
                    ],
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 100,
                margin: const EdgeInsets.all(50),
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.home);
                  },
                  child: const Text('最初に戻る'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
