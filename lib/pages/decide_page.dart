import 'package:flutter/material.dart';
import '../routes/app_routes.dart';
import '../states/decide_page_controller.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DecidePage extends StatelessWidget {
  const DecidePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    DecidePageController decidepagecontroller = Get.put(DecidePageController());
    final latitude = decidepagecontroller.shopplacelatitude.value;
    final longitude = decidepagecontroller.shopplacelongitude.value;
    return Scaffold(
      appBar: AppBar(
        title: Text(decidepagecontroller.shopname.value),
        backgroundColor: Theme.of(context).highlightColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 300,
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                    zoom: 17, //ズーム
                    target: LatLng(latitude, longitude), //経度,緯度
                    tilt: 45.0, //上下の角度
                    bearing: 90.0),
              ),
            ),
            Container(
              width: 300,
              height: 100,
              child: ElevatedButton(
                onPressed: () {
                  final url = Uri.parse(decidepagecontroller.targeturl.value);
                  launchUrl(url);
                },
                child: Text('外部サイトに飛ぶ'),
              ),
            ),
            Container(
              width: 300,
              height: 100,
              margin: EdgeInsets.all(50),
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.home);
                },
                child: Text('最初に戻る'),
              ),
            ),
            Container(
              child: TextFormField(
                decoration: const InputDecoration(hintText: 'お店の名前'),
                onChanged: (value) {
                  decidepagecontroller.shopname.value = value;
                },
              ),
            ),
            Container(
              child: TextFormField(
                decoration: const InputDecoration(hintText: 'お店のurl'),
                onChanged: (value) {
                  decidepagecontroller.targeturl.value = value;
                },
              ),
            ),
            Container(
              child: TextFormField(
                decoration: const InputDecoration(hintText: 'お店の緯度'),
                onChanged: (value) {
                  decidepagecontroller.shopplacelatitude.value =
                      double as double;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
