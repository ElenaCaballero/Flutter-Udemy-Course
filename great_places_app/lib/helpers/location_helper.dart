import 'dart:convert';

import 'package:http/http.dart' as http;

import '../helpers/api_management/secret.dart';

class LocationHelper {

  static Future<String> _getGoogleApiKey() async {
    final secret = await SecretLoader(secretPath: "secrets.json").load();
    return secret.apiKey;
  }

  static Future<String> generateLocationPreviewImage({double latitude, double longitude}) async {
    final GOOGLE_API_KEY = await _getGoogleApiKey();
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitude&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%7C$latitude,$longitude&key=$GOOGLE_API_KEY';
  }

  static Future<String> getPlaceAddress(double lat, double lng) async {
    final GOOGLE_API_KEY = await _getGoogleApiKey();
    final url = 'https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=$GOOGLE_API_KEY';
    final response = await http.get(url);
    return json.decode(response.body)['results'][0]['formatted_address'];
  }
}