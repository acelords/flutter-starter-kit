/*
use a Repository class which going to act as the inter-mediator and
a layer of abstraction between the APIs and the BLOC.

The task of the repository is to deliver movies data
to the BLOC after fetching it from the API.
 */

import 'package:starterkit/api/api_base_helper.dart';
import 'package:starterkit/models/movie.dart';
import 'package:starterkit/responses/movie_response.dart';
import 'package:starterkit/utils/constants.dart';

class MovieRepository {

  ApiBaseHelper _helper = ApiBaseHelper();

  Future<List<Movie>> fetchMovieList() async {
    final response = await _helper.get(Constants.moviesUrl);
    return MovieResponse.fromJson(response).results;
  }
}
