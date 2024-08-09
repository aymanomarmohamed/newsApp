import 'package:flutter/material.dart';

import 'package:newsapp/catogrys/catogry_small_card.dart';
import 'package:newsapp/catogrys/catogry_small_card_scroll.dart';
import 'package:newsapp/catogrys/new_card_scrool_bulder.dart';

import '../catogrys/news_card.dart';
import '../catogrys/news_card_scroll.dart';

class homepage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
       // centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("News",style: TextStyle(
              color: Colors.black
            ),),
            Text("Cloud",style: TextStyle(
                color: Colors.orange
            ),),


          ],
        ),
      ),
       body: CustomScrollView(

         physics: BouncingScrollPhysics(),
         slivers: [SliverToBoxAdapter(child:
         catogry_small_card_scroll()),
           new_card_scrool_bulder(My_Catogry: "top",)
         ],
       )
      // Column(
      //   children: [
      //     catogry_small_card_scroll(),
      //       Expanded(child: news_card_scroll()),
      );

  }
}
