import 'package:flutter/material.dart';
import 'package:starterkit/api/api_response.dart';
import 'package:starterkit/blocs/movie_bloc.dart';
import 'package:starterkit/models/movie.dart';
import 'package:starterkit/utils/constants.dart';
import 'package:starterkit/views/partials/api_error.dart';
import 'package:starterkit/views/partials/loading.dart';

import 'list.dart';

class MoviesIndexPage extends StatefulWidget {
  @override
  _MoviesIndexPageState createState() => _MoviesIndexPageState();
}

class _MoviesIndexPageState extends State<MoviesIndexPage> {
  MovieBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = MovieBloc();
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
      ),
      body: Container(
        padding: EdgeInsets.all(Constants.commonPadding),
        child: RefreshIndicator(
          onRefresh: () => _bloc.fetchMovieList(),
          child: StreamBuilder<ApiResponse<List<Movie>>>(
            stream: _bloc.movieListStream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                switch (snapshot.data.status) {
                  case Status.LOADING:
                    return Loading(
                      loadingMessage: snapshot.data.message,
                    );
                    break;
                  case Status.COMPLETED:
                    return MovieList(movieList: snapshot.data.data);
                    break;
                  case Status.ERROR:
                    return ApiError(
                      errorMessage: snapshot.data.message,
                      onRetryPressed: () => _bloc.fetchMovieList(),
                    );
                    break;
                }
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }

}
