import 'package:flutter/material.dart';
import 'package:newsapp/catogrys/new_card_scrool_bulder.dart';

class CatogryView extends StatelessWidget {
  CatogryView({required this.MyCatogry});
    String MyCatogry;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(MyCatogry,style: TextStyle(
          fontSize: 24
        ),),
      ),
      body: CustomScrollView(
        slivers: [
        new_card_scrool_bulder(My_Catogry:MyCatogry,)
      ],
      ),
    );
  }
}
