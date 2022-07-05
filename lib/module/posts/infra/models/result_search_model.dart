
import 'package:app_testemenhs/module/posts/domain/entities/result_search.dart';

class ResultSearchModel extends ResultSearch {
  final String  title;
  final String  context;
  final String  img;

  ResultSearchModel({
    required this.context,
    required this.title ,
    required this.img
  }): super(context: context , title: title , img: img);



  factory ResultSearchModel.fromJson(Map<String , dynamic> json){
    return  ResultSearchModel(
        img: json['img'] ,
        title: json['title'],
        context:json['context']
    );
  }
}