import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart' as xml;

class Hotpepperapi {
  final String lng;
  final String lat;

  Hotpepperapi({
    required this.lng,
    required this.lat,
  });

  factory Hotpepperapi.fromXml(xml.XmlElement element) {
    return Hotpepperapi(
      lng: element.findElements('lng').first.text,
      lat: element.findElements('lat').first.text,
    );
  }

  static List<Hotpepperapi> parseGourmet(String responseBody) {
    final document = xml.XmlDocument.parse(responseBody);
    final shopElements = document.findAllElements('shop');
    return shopElements
        .map((element) => Hotpepperapi.fromXml(element))
        .toList();
  }

  static Future<List<Hotpepperapi>> fetchHotpepperapi() async {
    try {
      final response = await http
          .get(Uri.parse(
              'https://webservice.recruit.co.jp/hotpepper/gourmet/v1/?key=f69100125abe9612&lat=34.67&lng=135.52&range=5&order=4'))
          .timeout(Duration(seconds: 30));
      parseGourmet(response.body);
      return List<Hotpepperapi>.from(jsonDecode(response.body));
    } catch (error) {
      debugPrint(error.toString());
      throw Exception(error.toString());
    }
  }
}
