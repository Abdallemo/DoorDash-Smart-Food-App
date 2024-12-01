import 'dart:convert';
import 'package:http/http.dart' as http;

class MyAddressApi {
  // Function to fetch addresses from OpenStreetMap API
  static Future<List<String>> searchAddress(String query) async {
    final url = Uri.parse(
        "https://nominatim.openstreetmap.org/search?q=$query&format=json&addressdetails=1");

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> results = jsonDecode(response.body);
      return results.map<String>((result) {
        final String address = result['display_name'] as String;
        return address;
      }).toList();
    } else {
      throw Exception("Failed to fetch addresses");
    }
  }
}
