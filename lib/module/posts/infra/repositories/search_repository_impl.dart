import 'package:app_testemenhs/module/posts/domain/entities/result_search.dart';
import 'package:app_testemenhs/module/posts/domain/errors/errors.dart';
import 'package:app_testemenhs/module/posts/domain/repository/search_repository.dart';
import 'package:app_testemenhs/module/posts/infra/datasource/search_datasource.dart';
import 'package:dartz/dartz.dart';

class  SearchRepositoryImpl  implements  SearchRepository{
  final SearchDataSource searchDataSource;
  SearchRepositoryImpl({required this.searchDataSource});
  @override
  Future<Either<FailureSearch, List<ResultSearch>>> search(String searchText) async {
     try{
       final result  = await this.searchDataSource.getSearch(searchText);
       return right(result);
     } catch (e){
       return left(DataSourceError());
     }
  }
}

