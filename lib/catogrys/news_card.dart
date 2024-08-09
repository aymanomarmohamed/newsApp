import 'package:flutter/material.dart';
import 'package:newsapp/catogrys/webview.dart';
import 'package:newsapp/model/artcal_model.dart';

class News_Card extends StatelessWidget {
  News_Card({required this.News});
artical_model News ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {

        Navigator.push(context,MaterialPageRoute(
          builder: (context) {

            return web_view(URl:News.url);

        },));
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 22),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
            child:
            Padding(
              padding: const EdgeInsets.all(8),
              child: Image.network(News.image??"https://ichef.bbci.co.uk/new"
                  "s/1024/branded_news/"
                  "04e3/live/4dc8b0a0-4d82-11ef-b2d2-cdb23d5d7c5b.jpg"
              ),
            ),

            ),
          ),
          Text(News.tital,
            maxLines: 2,style: TextStyle(
            fontSize: 18,
          ),

            overflow: TextOverflow.ellipsis,
          ),
          Text(News.description ?? '',
          style: TextStyle( fontSize: 18,color: Colors.grey
          ),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
