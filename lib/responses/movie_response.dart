import 'package:starterkit/models/movie.dart';

class MovieResponse {
  int totalResults;
  List<Movie> results;

  MovieResponse.fromJson(Map<String, dynamic> json) {
    totalResults = json['total_results'];
    if (json['results'] != null) {
      results = new List<Movie>();
      json['results'].forEach((v) {
        results.add(new Movie.fromJson(v));
      });
    }
  }
}