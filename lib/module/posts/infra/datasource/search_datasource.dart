import 'package:app_testemenhs/module/posts/infra/models/result_search_model.dart';

abstract class SearchDataSource {
    Future<List<ResultSearchModel>>  getSearch(String searchText);
}