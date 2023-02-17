import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Seved_Image extends StatefulWidget {
  const Seved_Image({Key? key}) : super(key: key);

  @override
  State<Seved_Image> createState() => _Seved_ImageState();
}

class _Seved_ImageState extends State<Seved_Image> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("SAVED IMAGES"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
