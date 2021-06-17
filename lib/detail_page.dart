import 'package:flutter/material.dart';
import 'package:flutter_movies/model/media.dart';

class DetailPage extends StatefulWidget {
  final Media media;
  DetailPage({this.media, Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<DetailPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie'),
      ),
      body: Container(
        child: new Padding(
          padding: new EdgeInsets.all(0.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Padding(
                padding: new EdgeInsets.all(7.0),
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/holder.png',
                  image: widget.media.getBackdropUrl(),
                  fit: BoxFit.cover,
                  fadeInDuration: Duration(milliseconds: 40),
                  height: 200.0,
                  width: double.infinity,
                ),
              ),
              new Padding(
                padding: new EdgeInsets.all(7.0),
                child: new Text(
                  widget.media.title,
                  style: new TextStyle(fontSize: 16.0),
                ),
              ),
              new Padding(
                padding: new EdgeInsets.all(7.0),
                child: new Text(
                  widget.media.overview,
                  style: new TextStyle(fontSize: 12.0),
                ),
              ),
              new Padding(
                padding: new EdgeInsets.all(7.0),
                child: new Text(
                  widget.media.releaseDate,
                  style: new TextStyle(fontSize: 14.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
