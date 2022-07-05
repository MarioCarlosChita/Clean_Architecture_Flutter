import 'package:app_testemenhs/module/posts/domain/entities/result_search.dart';
import 'package:app_testemenhs/module/posts/domain/errors/errors.dart';
import 'package:app_testemenhs/module/posts/infra/repositories/search_repository_impl.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepository{
  Future<Either<FailureSearch, List<ResultSearch>>>  search(String  searchText);
}


class SearchByTextRepository  implements   SearchRepository{
  final SearchRepositoryImpl searchRepositoryImpl;
  SearchByTextRepository({required this.searchRepositoryImpl});

  Future<Either<FailureSearch, List<ResultSearch>>> search(String  searchText) async {
     return this.searchRepositoryImpl.search(searchText);
  }
}