import 'package:flutter/material.dart';

class ImageList extends StatefulWidget {
  @override
  _ImageListState createState() => _ImageListState();
}

class _ImageListState extends State<ImageList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   new ListView(
        children: [
        new Container(
        height: 220,
        margin: EdgeInsets.only(top: 0.0, right: 5, left: 20),
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: [
            new Container(
              margin: EdgeInsets.all(2.0),
              child: new ClipRRect(
                borderRadius: new BorderRadius.circular(10.0),
                child: new Image(image: new AssetImage("images/cake2.png"),
                  height: 150.0,
                  width: 320.0,
                  fit: BoxFit.cover,),
              ),
            ),
            SizedBox(width: 5,),


            new Container(
              margin: EdgeInsets.all(2.0),
              child: new ClipRRect(
                borderRadius: new BorderRadius.circular(10.0),
                child: new Image(image: new AssetImage("images/cakeee.png"),
                  height: 200.0,
                  width: 320.0,
                  fit: BoxFit.cover,),
              ),
            ),
            SizedBox(width: 5,),


            new Container(
              margin: EdgeInsets.all(2.0),
              child: new ClipRRect(
                borderRadius: new BorderRadius.circular(10.0),
                child: new Image(image: new AssetImage("images/cake1.png"),
                  height: 200.0,
                  width: 320.0,
                  fit: BoxFit.cover,),
              ),
            ),
            SizedBox(width: 5,),

            new Container(
              margin: EdgeInsets.all(2.0),
              child: new ClipRRect(
                borderRadius: new BorderRadius.circular(10.0),
                child: new Image(image: new AssetImage("images/maincake2.png"),
                  height: 200.0,
                  width: 320.0,
                  fit: BoxFit.cover,),
              ),
            )
          ],
        ),
      ),
      ]
    ),
    );
  }
}
