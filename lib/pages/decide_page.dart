import 'package:flutter/material.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 300,
            child: const GoogleMap(
              initialCameraPosition: CameraPosition(
                  zoom: 17, //ズーム
                  target: LatLng(35.0, 135.0), //経度,緯度
                  tilt: 45.0, //上下の角度
                  bearing: 90.0),
            ),
          ),
          Container(
            width: 300,
            height: 100,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('外部サイトに飛ぶ'),
            ),
          ),
          Container(
            width: 300,
            height: 100,
            margin: EdgeInsets.all(50),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('最初に戻る'),
            ),
          ),
        ],
      ),
    );
  }
}
