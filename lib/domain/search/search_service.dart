import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/search/model/search_resp/search_resp.dart';

import '../core/failures/main_failures.dart';

abstract class SearchService {
  Future<Either<MainFailure, SearchResp>> searchMovies({
    required String movieQuery,
  });
}
