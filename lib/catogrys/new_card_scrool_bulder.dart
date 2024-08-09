import 'package:flutter/material.dart';
import 'package:newsapp/model/artcal_model.dart';
import 'package:newsapp/serves/api_news.dart';
import 'news_card_scroll.dart';

class new_card_scrool_bulder extends StatefulWidget {
   new_card_scrool_bulder({required this.My_Catogry});
   final String My_Catogry;
  @override
  State<new_card_scrool_bulder> createState() => _new_card_scrool_bulderState();
}

class _new_card_scrool_bulderState extends State<new_card_scrool_bulder> {
var Future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future=get_news_api().general_news(Catogry: widget.My_Catogry);
  }
  // Future<void> get_general_news() async {
  //   List_of_Articals = await get_news_api().general_news();
  //   dataApiloading = false;
  //   setState(() {});
  // }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<artical_model>>
      (future: Future,
        builder: (context, snapshot) {
          if(snapshot.hasData)
          {
            return news_card_scroll(List_of_Articals: snapshot.data !);
          }
          else if(snapshot.hasError)
          {
            return SliverToBoxAdapter(child: Text("data")) ;
          }
          else
          {
            return SliverToBoxAdapter(
                      child: Center(child: CircularProgressIndicator()));
          }

    }
    );
        }



  //     dataApiloading ?SliverToBoxAdapter(
  //       child: Center(child: CircularProgressIndicator())): List_of_Articals.isEmpty?
  //   SliverToBoxAdapter(child: Text("data")) :news_card_scroll(List_of_Articals: List_of_Articals)
  //   ;
  // }
}

