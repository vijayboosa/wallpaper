import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallpaper"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _row(Colors.red, Colors.green),
            _row(Colors.yellow, Colors.lightBlueAccent),
            _row(Colors.black38, Colors.blueGrey),
            _row(Colors.red, Colors.green),
          ],
        ),
      ),
    );
  }

  Container _container(Color color) {
    return Container(
      color: color,
      width: 200,
      height: 200,
    );
  }

  Row _row(Color color1, Color color2) {
    return Row(
      children: [
        Expanded(
          child: _container(color1),
        ),
        Expanded(
          child: _container(color2),
        ),
      ],
    );
  }
}
