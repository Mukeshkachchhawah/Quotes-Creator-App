import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_quill/flutter_quill.dart';

class Create_Quotes extends StatefulWidget {
  const Create_Quotes({Key? key}) : super(key: key);

  @override
  State<Create_Quotes> createState() => _Create_QuotesState();
}

class _Create_QuotesState extends State<Create_Quotes> {
  final textcontroller = QuillController.basic();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   centerTitle: true,
      //   title: Text("Create Quotes"),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.blue),
            child:
                QuillEditor.basic(controller: textcontroller, readOnly: false),
          ),
          SizedBox(
            height: 20,
          ),
          QuillToolbar.basic(
            controller: textcontroller,
            toolbarIconSize: 20,
          ),
        ],
      ),
    );
  }
}
