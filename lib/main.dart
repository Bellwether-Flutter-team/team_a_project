import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:team_a_project/pages/home.dart';
import 'package:team_a_project/routes/app_pages.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {
  Future firebaseFunc() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  firebaseFunc();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home:  MyHomePage(),
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: AppPages.list,
    );
  }
}

class NetworkHelper {
  NetworkHelper({required this.url});
  final String url;
  Future<dynamic> getDate() async {
    http.Response responce;
    responce = await http.get(Uri.parse(url));
    if (responce.statusCode == 200) {
      String data = responce.body;
      dynamic jsonObject = jsonDecode(data);
      return jsonObject;
    } else {
      debugPrint(responce.statusCode as String?);
    }
  }
}
