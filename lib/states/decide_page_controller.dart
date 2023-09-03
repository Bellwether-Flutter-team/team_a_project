import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ShopInfo {
  final String name;
  final String address;
  final String url;
  final double latitude;
  final double longitude;

  ShopInfo({
    required this.name,
    required this.address,
    required this.url,
    required this.latitude,
    required this.longitude,
  });
}

Future<ShopInfo?> fetchShopInfo(String shopName, String shopAddress) async {
  final String apiKey = 'f69100125abe9612';
  final String baseUrl =
      'https://webservice.recruit.co.jp/hotpepper/gourmet/v1/';
  final String shopName = 'シュラスコ&ビアレストラン ALEGRIA AKASAKA インターシティAIR（アレグリア赤坂';
  final String shopAddress = '東京都港区赤坂１-8-1 赤坂インターシティAIR 1F';
  final Map<String, String> queryParams = {
    'key': apiKey,
    'name': shopName,
    'address': shopAddress,
  };

  final Uri uri = Uri.parse('$baseUrl/shops/');
  final Uri fullUri = uri.replace(queryParameters: queryParams);

  final response = await http.get(fullUri);

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = json.decode(response.body);
    final List<dynamic> shops = data['results']['shop'];

    if (shops.isNotEmpty) {
      final shop = shops[0]; // 最初のお店情報を取得

      final String name = shop['name'];
      final String address = shop['address'];
      final String url = shop['urls']['pc'];
      final double latitude = double.tryParse(shop['lat']) ?? 0.0;
      final double longitude = double.tryParse(shop['lng']) ?? 0.0;

      return ShopInfo(
        name: name,
        address: address,
        url: url,
        latitude: latitude,
        longitude: longitude,
      );
    }
  }

  return null; // お店が見つからない場合はnullを返す
}

class ShopDataController extends GetxController {
  RxString shopUrl = ''.obs;
  RxDouble shopLatitude = 0.0.obs;
  RxDouble shopLongtitude = 0.0.obs;

  Future getShopplaceUrl() async {
    final shopName = 'シュラスコ&ビアレストラン ALEGRIA AKASAKA インターシティAIR（アレグリア赤坂）';
    final shopAddress = '東京都港区赤坂１-8-1 赤坂インターシティAIR 1';

    final shopInfo = await fetchShopInfo(shopName, shopAddress);
    if (shopInfo != null) {
      shopUrl.value = '${shopInfo.url}';
      shopLatitude.value = shopInfo.latitude;
      shopLongtitude.value = shopInfo.longitude;
    } else {
      print('お店が見つかりませんでした。');
    }
  }
}

class DecidePageController extends GetxController {
  final ShopDataController shopDataController = Get.find<ShopDataController>();

  RxString shopname = 'まだ選択されていません'.obs;
  RxString shopaddress = ''.obs;
  RxDouble shopplacelatitude = 35.6961868.obs;
  RxDouble shopplacelongitude = 139.4463985.obs;
  RxString targeturl = 'https://store-info.skylark.co.jp/map/018874'.obs;
  String apikey = 'f69100125abe9612';

  getShopLatitude() {
    return shopDataController.shopLatitude.value;
  }

  getShopLongitude() {
    return shopDataController.shopLongtitude.value;
  }

  getShopUrl() async{
    
    print('shopDataController.shopUrl.value: ${shopDataController.shopUrl.value}');
    return shopDataController.shopUrl.value;
  }
}
