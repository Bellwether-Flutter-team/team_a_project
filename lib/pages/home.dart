import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_zxing/flutter_zxing.dart';
import '../routes/app_routes.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  //  late GoogleMapController mapController;

  @override
  Widget build(BuildContext context){
    return MaterialApp(home: );
  }
}

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       backgroundColor: Theme.of(context).colorScheme.inversePrimary,
  //     ),
  //     body: Center(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           ElevatedButton(
  //             style: ElevatedButton.styleFrom(
  //               padding: const EdgeInsets.symmetric(horizontal: 20.0),
  //               backgroundColor: Theme.of(context).primaryColor,
  //               foregroundColor: Colors.black,
  //               elevation: 0,
  //               shape: StadiumBorder(
  //                 side: BorderSide(
  //                     width: 1, color: Theme.of(context).primaryColor),
  //               ),
  //             ),
  //             child: SizedBox(
  //               width: MediaQuery.of(context).size.width * 0.55,
  //               height: 45.0,
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.start,
  //                 crossAxisAlignment: CrossAxisAlignment.center,
  //                 children: [
  //                   Expanded(
  //                     child: Container(
  //                       width: double.infinity,
  //                       alignment: Alignment.center,
  //                       child: const Text(
  //                         'よしひとのアプリ',
  //                         style: TextStyle(
  //                           fontSize: 15,
  //                           color: Colors.white,
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //             onPressed: () {
  //               Get.toNamed(AppRoutes.yoshiApp);
  //             },
  //           ),
  //           const SizedBox(
  //             height: 30,
  //           ),
  //           ElevatedButton(
  //             style: ElevatedButton.styleFrom(
  //               padding: const EdgeInsets.symmetric(horizontal: 20.0),
  //               backgroundColor: Theme.of(context).primaryColor,
  //               foregroundColor: Colors.black,
  //               elevation: 0,
  //               shape: StadiumBorder(
  //                 side: BorderSide(
  //                     width: 1, color: Theme.of(context).primaryColor),
  //               ),
  //             ),
  //             child: SizedBox(
  //               width: MediaQuery.of(context).size.width * 0.55,
  //               height: 45.0,
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.start,
  //                 crossAxisAlignment: CrossAxisAlignment.center,
  //                 children: [
  //                   Expanded(
  //                     child: Container(
  //                       width: double.infinity,
  //                       alignment: Alignment.center,
  //                       child: const Text(
  //                         'ConditionPageへ',
  //                         style: TextStyle(
  //                           fontSize: 15,
  //                           color: Colors.white,
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //             onPressed: () {
  //               Get.toNamed(AppRoutes.conditionPage);
  //             },
  //           ),
  //           const SizedBox(
  //             height: 20,
  //           ),
  //           ElevatedButton(
  //             style: ElevatedButton.styleFrom(
  //               padding: const EdgeInsets.symmetric(horizontal: 20.0),
  //               backgroundColor: Theme.of(context).colorScheme.inversePrimary,
  //               foregroundColor: Colors.black,
  //               elevation: 0,
  //               shape: StadiumBorder(
  //                 side: BorderSide(
  //                     width: 1,
  //                     color: Theme.of(context).colorScheme.inversePrimary),
  //               ),
  //             ),
  //             child: SizedBox(
  //               width: MediaQuery.of(context).size.width * 0.55,
  //               height: 45.0,
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.start,
  //                 crossAxisAlignment: CrossAxisAlignment.center,
  //                 children: [
  //                   Expanded(
  //                     child: Container(
  //                       width: double.infinity,
  //                       alignment: Alignment.center,
  //                       child: const Text(
  //                         'りくやのアプリ',
  //                         style: TextStyle(
  //                           fontSize: 15,
  //                           color: Colors.white,
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //             onPressed: () {
  //               Get.toNamed(AppRoutes.rikuApp);
  //             },
  //           ),
  //            Container(
  //           height: 300,
  //           child: const GoogleMap(
  //             initialCameraPosition: CameraPosition(
  //                 zoom: 17, //ズーム
  //                 target: LatLng(35.0, 135.0), //経度,緯度
  //                 tilt: 45.0, //上下の角度
  //                 bearing: 90.0),
  //           ),
  //         ),Sizedbox(
  //           width:330,
  //           height: 100,
  //         child: ElevatedButton(
  //           onPressed: () {},
  //           child:Text(
  //             "位置,情報の取得",
  //           )
  //           style:ButtonStyle(),
  //         ),
  //         ),
  //         ],
  //       ),
  //     ),
  //   );
  // }


  