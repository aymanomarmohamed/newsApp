
import 'package:dio/dio.dart';
import 'package:newsapp/catogrys/new_card_scrool_bulder.dart';
import 'package:newsapp/model/artcal_model.dart';

class get_news_api{

  Dio dio=Dio();

   Future<List<artical_model>>general_news({required String Catogry}) async {
     try{
       var Respons= await dio.get("https://newsdata.io/api/1/news?apikey=pub_"
           "504803d63fbee830da498a9d6302766c16d68&q=news&country="
           "eg&language=ar&category=$Catogry");
       Map<String,dynamic>respone_data=Respons.data;
       List<dynamic> articles=respone_data["results"];
       List<artical_model>ArticleList=[];
       for (var Artcal in articles){
         artical_model ArticleNews=  artical_model(
             url: Artcal['link'],
             image: Artcal['image_url'],
             tital: Artcal['title'],
             description: Artcal['description']);
         ArticleList.add(ArticleNews);
       }
       return ArticleList;
     }

     catch(e){
       return [];
     }
  }
}

