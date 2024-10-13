import 'dart:convert';
import 'package:gallery_app/features/gallery/data/model/pixbay_image_model.dart';
import 'package:http/http.dart' as http;

class PixabayRepository {
  static const String apiKey = '23565774-87d08a088a8d9e9508970a966';
  static const String apiUrl = 'https://pixabay.com/api/';

  Future<List<PixabayImage>> fetchImages(int page) async {
    final response =
        await http.get(Uri.parse('$apiUrl?key=$apiKey&page=$page&per_page=20'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body)['hits'];
      return data.map((json) => PixabayImage.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load images');
    }
  }
}
