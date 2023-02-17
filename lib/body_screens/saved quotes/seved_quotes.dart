import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Seved_Quotes extends StatefulWidget {
  const Seved_Quotes({Key? key}) : super(key: key);

  @override
  State<Seved_Quotes> createState() => _Seved_QuotesState();
}

class _Seved_QuotesState extends State<Seved_Quotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("SAVED QUOTES"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Column(
        children: [],
      ),
    );

  }
}

