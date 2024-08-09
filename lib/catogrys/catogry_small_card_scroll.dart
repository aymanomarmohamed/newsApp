import 'package:flutter/material.dart';
import 'package:newsapp/catogrys/catogry_small_card.dart';
import 'package:newsapp/model/model.dart';



class catogry_small_card_scroll extends StatelessWidget {

List< model_smal_card> smal_cards=[
  model_smal_card(image_smalcard:
  "lib/assets/business.jpg", Text_Catogry: "business"),
  model_smal_card(image_smalcard:
  "lib/assets/entertaiment.jpg", Text_Catogry: "entertainment"),
  model_smal_card(image_smalcard:
  "lib/assets/general.jpg", Text_Catogry: "top"),
  model_smal_card(image_smalcard:
  "lib/assets/health.jpg", Text_Catogry: "health"),
  model_smal_card(image_smalcard:
  "lib/assets/science.jpg", Text_Catogry: "science"),
  model_smal_card(image_smalcard:
  "lib/assets/sports-tools.jpg", Text_Catogry: "sports")


];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: smal_cards.length,
        itemBuilder:
      (context, index) {
        return catogry_small_card(small_card:smal_cards[index]);
      },),
    );
  }
}

