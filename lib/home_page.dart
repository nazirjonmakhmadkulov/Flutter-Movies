import 'package:flutter/material.dart';
import 'package:flutter_movies/media_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indexPage = 0;
  PageController pageController = PageController();
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _indexPage = pageController.page.toInt();
        print('indice actual:' + _indexPage.toString());
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._indexPage = page;
    });
  }

  void navigationTapped(int page) {
    if (page == 0) {
      pageController.animateToPage(page,
          duration: const Duration(milliseconds: 100), curve: Curves.ease);
    } else {
      pageController.animateToPage(page,
          duration: const Duration(milliseconds: 100), curve: Curves.ease);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Movies'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: PageView(
          controller: pageController,
          onPageChanged: onPageChanged,
          children: <Widget>[MediaList(), Text('Премьеры')]),
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: _indexPage,
        onTap: navigationTapped,
        items: allDestinations.map((Destination destination) {
          return BottomNavigationBarItem(
            icon: Icon(destination.icon),
            backgroundColor: destination.color,
            label: destination.title,
          );
        }).toList(),
      ),
    );
  }
}

class Destination {
  const Destination(this.title, this.icon, this.color);
  final String title;
  final IconData icon;
  final MaterialColor color;
}

const List<Destination> allDestinations = const <Destination>[
  Destination("Популярный", Icons.thumb_up, Colors.blue),
  Destination("Премьеры", Icons.star, Colors.blue),
];
