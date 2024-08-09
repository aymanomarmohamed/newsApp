import 'package:flutter/material.dart';
import 'package:newsapp/catogrys/CatogryView.dart';
import 'package:newsapp/model/model.dart';

class catogry_small_card extends StatelessWidget {
  catogry_small_card({required this.small_card});
  model_smal_card small_card;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        Navigator.push(context, MaterialPageRoute(builder: (context)
        {
          return CatogryView(MyCatogry: small_card.Text_Catogry,);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
borderRadius: BorderRadius.circular(13),
            image: DecorationImage(
                image: AssetImage(small_card.image_smalcard),
            fit:BoxFit.fill
            )
          ),
          child: Center(
            child: Text(small_card.Text_Catogry,style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.bold,
              fontSize: 20

            )),
          ),
        ),
      ),
    );
  }
}
