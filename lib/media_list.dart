import 'package:flutter/material.dart';
import 'package:flutter_movies/common/httpHandler.dart';
import 'package:flutter_movies/detail_page.dart';
import 'package:flutter_movies/model/media.dart';
import 'package:flutter_movies/media_list_item.dart';

class MediaList extends StatefulWidget {
  @override
  _MediaListState createState() => _MediaListState();
}

class _MediaListState extends State<MediaList> {
  List<Media> _media = [];
  @override
  void initState() {
    super.initState();
    loadMovies();
  }

  void loadMovies() async {
    var movies = await HttpHandler().fetchMovies();
    setState(() {
      _media.addAll(movies);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: _media.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: MediaListItem(_media[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    media: _media[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
