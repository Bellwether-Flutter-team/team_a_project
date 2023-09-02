import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String lat = '';
  String lng = '';

  // APIのURL
  final apiUrl =
      'https://webservice.recruit.co.jp/hotpepper/gourmet/v1/?key=f69100125abe9612&large_area=Z011';

  // APIからデータを取得する関数
  Future<void> fetchData() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final results = data['results']['shop'];

      // 最初の店舗の緯度と経度を取得
      final firstShop = results[0];
      final firstShopLat = firstShop['lat'];
      final firstShopLon = firstShop['lng'];

      setState(() {
        lat = firstShopLat;
        lng = firstShopLon;
      });
    } else {
      setState(() {
        lat = 'エラーが発生しました';
        lng = 'エラーが発生しました';
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('緯度と経度の表示'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('緯度: $lat'),
              Text('経度: $lng'),
            ],
          ),
        ),
      ),
    );
  }
}
