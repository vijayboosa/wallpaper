import 'package:flutter/material.dart';
import 'package:wallpaper/screens/detail_image_view_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> liUrls = const [
    "https://images.wallpaperscraft.com/image/rocks_slope_snow_185436_1440x2560.jpg",
    "https://images.wallpaperscraft.com/image/building_facade_architecture_185424_1440x2560.jpg",
    "https://images.wallpaperscraft.com/image/road_mountains_distance_185416_1440x2560.jpg",
    "https://images.wallpaperscraft.com/image/road_marking_bridge_123398_2560x1080.jpg",
    'https://images.wallpaperscraft.com/image/road_route_bridge_marking_night_115144_2560x1080.jpg',
    "https://images.wallpaperscraft.com/image/road_marking_night_123080_2560x1080.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallpaper"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          ...liUrls.map((e) {
            print(e);
            return _container(e);
          }).toList(),
          // _row(
          //     "https://images.wallpaperscraft.com/image/building_facade_architecture_185424_1440x2560.jpg",
          //     'https://images.wallpaperscraft.com/image/rocks_slope_snow_185436_1440x2560.jpg'),
          // _row(
          //     'https://images.wallpaperscraft.com/image/road_mountains_distance_185416_1440x2560.jpg',
          //     'https://images.wallpaperscraft.com/image/road_mountains_distance_185416_1440x2560.jpg'),
          // _row(
          //     'https://images.wallpaperscraft.com/image/road_marking_bridge_123398_2560x1080.jpg',
          //     'https://images.wallpaperscraft.com/image/road_route_bridge_marking_night_115144_2560x1080.jpg'),
          // _row(
          //   'https://images.wallpaperscraft.com/image/road_marking_night_123080_2560x1080.jpg',
          //   'https://images.wallpaperscraft.com/image/road_marking_night_123080_2560x1080.jpg',
          // ),
        ],
      ),
    );
  }

  Widget _container(String url) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext ctx) => DetailImageViewScreen(
              url: url,
            ),
          ),
        );
      },
      child: Container(
        width: 500,
        decoration: BoxDecoration(
            color: Colors.black,
            border: Border(
              top: BorderSide(width: 2.0),
              left: BorderSide(width: 1.0),
              right: BorderSide(width: 1.0),
              bottom: BorderSide(width: 2.0),
            )),
        height: 200,
        child: FadeInImage(
          fit: BoxFit.fill,
          image: NetworkImage(
            url,
          ),
          placeholder: AssetImage('assets/images/loading.png'),
        ),
      ),
    );
  }

  Row _row(String url1, String url2) {
    return Row(
      children: [
        Expanded(
          child: _container(url1),
        ),
        Expanded(
          child: _container(url2),
        ),
      ],
    );
  }
}

/*
List<String> liUrls = [
"https://images.wallpaperscraft.com/image/rocks_slope_snow_185436_1440x2560.jpg"
"https://images.wallpaperscraft.com/image/building_facade_architecture_185424_1440x2560.jpg"
"https://images.wallpaperscraft.com/image/road_mountains_distance_185416_1440x2560.jpg"
"https://images.wallpaperscraft.com/image/road_mountains_distance_185416_1440x2560.jpg"
"https://images.wallpaperscraft.com/image/road_marking_bridge_123398_2560x1080.jpg"
'https://images.wallpaperscraft.com/image/road_route_bridge_marking_night_115144_2560x1080.jpg'
"https://images.wallpaperscraft.com/image/road_marking_night_123080_2560x1080.jpg"];
*/
