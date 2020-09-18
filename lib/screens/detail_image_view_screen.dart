import 'package:flutter/material.dart';

class DetailImageViewScreen extends StatelessWidget {
  final String url;

  const DetailImageViewScreen({Key key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          child: Image.network(
            url,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
