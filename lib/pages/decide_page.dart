import 'package:flutter/material.dart';
// import 'package:google_maps/google_maps.dart';
import '../routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DecidePage extends StatelessWidget {
  const DecidePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("decidePage"),
        backgroundColor: Theme.of(context).highlightColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 300,
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                    zoom: 17, //ズーム
                    target: LatLng(35.0, 135.0), //経度,緯度
                    tilt: 45.0, //上下の角度
                    bearing: 90.0),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 300,
              height: 100,
              child: ElevatedButton(
                onPressed: () {},
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
    );
  }
}
