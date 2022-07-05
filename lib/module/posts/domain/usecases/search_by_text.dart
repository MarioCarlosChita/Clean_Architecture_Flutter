import 'package:app_testemenhs/module/posts/domain/entities/result_search.dart';
import 'package:app_testemenhs/module/posts/domain/errors/errors.dart';
import 'package:app_testemenhs/module/posts/domain/repository/search_repository.dart';
import 'package:dartz/dartz.dart';

abstract class  SearchByText {
  Future<Either<FailureSearch, List<ResultSearch>>>  call(String  searchText);
}

class  SearchByTextImpl   implements  SearchByText{
  final SearchRepository repository ;
  SearchByTextImpl({required this.repository});

  @override
  Future<Either<FailureSearch, List<ResultSearch>>> call(String searchText) async{

     if (searchText == null   ||  searchText.isEmpty)
         return  left(InvalidTextError());

     return this.repository.search(searchText);
  }
}

