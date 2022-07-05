import 'dart:html';

import 'package:app_testemenhs/module/posts/infra/datasource/search_datasource.dart';
import 'package:app_testemenhs/module/posts/infra/models/result_search_model.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class GitHubDataSource  implements  SearchDataSource{
  final Dio dio;
  GitHubDataSource({required this.dio});
  @override
  Future<List<ResultSearchModel>> getSearch(String searchText)  async{
     final response = await dio.get("https://api.github.com/search/users?q=${searchText}");
     if ( response.statusCode == HttpStatus.ok)
          return List.from(json.decode(response.data['items']).map((e)=>ResultSearchModel.fromJson(e)));
     return  [];
  }

 }

