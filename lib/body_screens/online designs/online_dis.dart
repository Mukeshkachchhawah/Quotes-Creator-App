import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Online_Designs extends StatefulWidget {
  const Online_Designs({Key? key}) : super(key: key);

  @override
  State<Online_Designs> createState() => _Online_DesignsState();
}

class _Online_DesignsState extends State<Online_Designs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Online Designs"),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
