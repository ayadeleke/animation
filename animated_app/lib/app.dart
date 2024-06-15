// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'animation_demo.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Rotation App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.shade100,
          foregroundColor: Colors.brown.shade900,
          title: Text('Click on the Image to Rotate'),
        ),
        body: Center(
          child: RotatingImageWidget(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Text('You will be able to add images here');
          },
          focusColor: Colors.pink.shade100,
          backgroundColor: Colors.pink.shade200,
          hoverColor: Colors.pink.shade400,
          child: Icon(Icons.add),
        ),
        backgroundColor: Colors.pink.shade50,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
