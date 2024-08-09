// import 'package:flutter/material.dart';
// import 'package:newsapp/model/artcal_model.dart';
// import '../catogrys/news_card.dart';
// import '../serves/api_news.dart';
// import '../model/model.dart';
//
// class news_card_scroll111 extends StatefulWidget {
//   @override
//   State<news_card_scroll> createState() => _news_card_scrollState();
// }
// class _news_card_scrollState extends State<news_card_scroll> {
//   bool dataApiloading =false;
//   List<artical_model>List_of_Articals=[];
//   @override
//   void initState()  {
//     // TODO: implement initState
//     super.initState();
//     get_general_news();
//   }
//   Future<void> get_general_news() async {
//     List_of_Articals= await get_news_api().general_news();
//     dataApiloading=true;
//     setState(() {
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return   dataApiloading?  SliverList(delegate: SliverChildBuilderDelegate(
//         childCount: List_of_Articals.length,
//             (context, index) => News_Card(
//           News:List_of_Articals[index] ,
//         ))
//     )
//         :SliverToBoxAdapter(
//         child: Center(child: CircularProgressIndicator()));
//     // ListView.builder(
//     //
//     // physics: NeverScrollableScrollPhysics(),
//     // shrinkWrap: true,
//     // itemCount: 10,
//     // itemBuilder:
//     //     (context, index) {
//     // return News_Card();
//         ;
//   }
// }
//
