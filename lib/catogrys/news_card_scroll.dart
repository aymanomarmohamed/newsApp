import 'package:flutter/material.dart';
import 'package:newsapp/model/artcal_model.dart';

import 'news_card.dart';



class news_card_scroll extends StatelessWidget {

  news_card_scroll({required this.List_of_Articals}) ;
List<artical_model>List_of_Articals;
  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate(
    childCount: List_of_Articals.length,
(context, index) => News_Card(
News:List_of_Articals[index])));
  }
}





      // ListView.builder(
      //
      // physics: NeverScrollableScrollPhysics(),
      // shrinkWrap: true,
      // itemCount: 10,
      // itemBuilder:
      //     (context, index) {
       // return News_Card();
