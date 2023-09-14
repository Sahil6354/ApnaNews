import 'package:flutter/material.dart';
import 'package:news_app_api/views/article_view.dart';

Widget MyAppBar() {
  return AppBar(
    centerTitle: true,
    automaticallyImplyLeading: false,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "News",
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
        ),
        Text(
          "Genix",
          style: TextStyle(
              color: Colors.deepPurpleAccent, fontWeight: FontWeight.w600),
        ),
      ],
    ),
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}

class NewsTile extends StatelessWidget {
  final String imgUrl, title, desc, content, posturl;

  NewsTile(
      {this.imgUrl,
      this.desc,
      this.title,
      this.content,
      @required this.posturl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArticleView(
                      postUrl: posturl,
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Card(
          elevation: 12.0,
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.deepPurpleAccent, width: 1.5),
              borderRadius: BorderRadius.circular(12.0)),
          child: Container(
              padding: EdgeInsets.all(12.0),
              width: MediaQuery.of(context).size.width,
              child: Container(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(6),
                          bottomLeft: Radius.circular(6))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.network(
                            imgUrl,
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        title,
                        maxLines: 2,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        desc,
                        maxLines: 2,
                        style: TextStyle(color: Colors.black54, fontSize: 14),
                      )
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
