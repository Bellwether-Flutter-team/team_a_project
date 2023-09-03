class Hotpepperapi {
  final String lat;
  final String lng;
  final List<String> smallArea;
  Hotpepperapi({
    required this.lat,
    required this.lng,
    required this.smallArea,
  });

  factory Hotpepperapi.fromJson(Map<String, dynamic> json) {
    List<String> typesToList(dynamic small_area) {
      List<String> ret = [];
      for (int i = 0; i < small_area.length; i++) {
        ret.add(small_area[i]['small_area']['lng']['lat']);
      }
      return ret;
    }

    return Hotpepperapi(
        lat: json['lat'],
        lng: json['lng'],
        smallArea: typesToList(json['smallarea']));
  }
}
