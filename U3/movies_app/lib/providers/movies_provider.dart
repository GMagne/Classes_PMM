import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:movies_app/models/movie.dart';
import 'package:movies_app/models/now_playing_response.dart';

class MoviesProvider extends ChangeNotifier {
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'es-ES';
  final String _page = '1';
  final Map<String, String> headers = {
    'accept': 'application/json',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4ZGY3MjJiMWU1Zjk3MDMzNDZiNmMwYjNkYTc2MThlMSIsIm5iZiI6MTczMTg4MDU3MC43MjkxNTQsInN1YiI6IjY3M2E1NjBkMjgxYWM5NzJlYTQ0ZDc4MCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.MYOAioWu79zreC3LClFUEYgiku8vlX6gWzXjX67i2r4'
  };

  List<Movie> onDisplayMovies = [];

  MoviesProvider() {
    print('MoviesProvider constructor');
    this.getOnDisplayMovies();
  }

  void getOnDisplayMovies() async {
    print('Get on display movies');

    final url = Uri.https(_baseUrl, '/3/movie/now_playing', {
      'language': _language,
      'page': _page,
    });
    var response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      var itemCount = jsonResponse['results'];
      print('Number of books about http: $itemCount.');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}
