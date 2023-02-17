import 'package:flutter/material.dart';
import 'package:flutter_quotes_creator/body_screens/authors/authors.dart';
import 'package:flutter_quotes_creator/body_screens/create%20quotes/create_quotes.dart';
import 'package:flutter_quotes_creator/body_screens/online%20designs/online_dis.dart';
import 'package:flutter_quotes_creator/body_screens/saved%20images/seved_image.dart';
import 'package:flutter_quotes_creator/body_screens/saved%20quotes/seved_quotes.dart';
import 'package:flutter_quotes_creator/bottom_bar_pages/favarit.dart';
import 'package:flutter_quotes_creator/home_pages/so.dart';

import '../body_screens/categories/categroies.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _seletedIndex = 0; // bottom bar button selet in value

  bool switchvalue = false;

// swich button dark mode on / off
  ThemeData _dark =
      ThemeData(brightness: Brightness.dark, primaryColor: Colors.white);
  ThemeData _light =
      ThemeData(brightness: Brightness.light, primaryColor: Colors.black);

// share in instgram link
  final Uri _url = Uri.parse(
      'https://www.instagram.com/quotes_creator_app/?igshid=YzdkMWQ2MWU%3D');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  // share in fackbook link add open in fackbook
  final Uri _urlfackbook = Uri.parse('https://m.facebook.com/100067057740467/');
  Future<void> _launchUrlfackbook() async {
    if (!await launchUrl(_urlfackbook)) {
      throw 'Could not launch $_urlfackbook';
    }
  }

// share url on plat stor add _launchUrlapp in bottom app bar
  final Uri _urls = Uri.parse(
      'https://play.google.com/store/apps/details?id=com.thinkpeak.quotescreator');
  Future<void> _launchUrlapp() async {
    if (!await launchUrl(_urls)) {
      throw 'Could not launch $_urls';
    }
  }

// share in url in other app Eemple shar icon
  void share(BuildContext context) async {
    Share.share(
        "https://play.google.com/store/apps/details?id=com.thinkpeak.quotescreator");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: switchvalue ? _dark : _light,
      home: Scaffold(
        //  backgroundColor: Color.fromARGB(255, 32, 30, 30),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SafeArea(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: _launchUrl,
                        child: Container(
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25.0),
                                  bottomRight: Radius.circular(25.0))),
                          child: ListTile(
                            title: Center(
                                child: Text(
                              "INSTAGRAM PAGE",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Dark Mode",
                        style: TextStyle(fontSize: 20),
                      ),
                      // switch button dark and white mode on/off
                      Switch(
                          value: switchvalue,
                          onChanged: (value) {
                            setState(() {
                              switchvalue = value;
                            });
                          })
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 250,
              ),
              // ElevatedButton(onPressed: _launchUrl, child: Text("data")),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SafeArea(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Categories()));
                          },
                          child: Container(
                            width: 180,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0))),
                            child: ListTile(
                              title: Center(
                                  child: Text(
                                "CATEGORIES",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              )),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Authors()));
                        },
                        child: Container(
                          width: 180,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25.0),
                                  bottomRight: Radius.circular(25.0))),
                          child: ListTile(
                            title: Center(
                                child: Text(
                              "AUTHORS",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Create_Quotes()));
                },
                child: Container(
                  width: 380,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25.0),
                          bottomRight: Radius.circular(25.0))),
                  child: ListTile(
                    title: Center(
                        child: Text(
                      "CREATE QUOTES",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Seved_Quotes()));
                },
                child: Container(
                  width: 380,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25.0),
                          bottomRight: Radius.circular(25.0))),
                  child: ListTile(
                    title: Center(
                        child: Text(
                      "SAVED QUOTES",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Seved_Image()));
                },
                child: Container(
                  width: 380,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25.0),
                          bottomRight: Radius.circular(25.0))),
                  child: ListTile(
                    title: Center(
                        child: Text(
                      "SAVED IMAGES",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Online_Designs()));
                },
                child: Container(
                  width: 380,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25.0),
                          bottomRight: Radius.circular(25.0))),
                  child: ListTile(
                    title: Center(
                        child: Text(
                      "ONLINE DESIGNS",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: false,
            currentIndex: _seletedIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                  icon: IconButton(
                      onPressed: () {
                        share(context);
                      },
                      icon: Icon(
                        Icons.share,
                        color: Colors.white,
                      )),
                  label: ""),
              BottomNavigationBarItem(
                  icon: IconButton(
                      onPressed: () {
                        showModal(context);
                      },
                      icon: Icon(
                        Icons.star,
                        color: Colors.white,
                      )),
                  label: ""),
              BottomNavigationBarItem(
                  icon: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Favorite()));
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.white,
                      )),
                  label: ""),
              BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: () {},
                    icon: PopupMenuButton(
                        icon: Icon(
                          Icons.person_add_alt_1_rounded,
                          color: Colors.white,
                        ),
                        itemBuilder: (_) => <PopupMenuItem>[
                              PopupMenuItem(
                                onTap: _launchUrlfackbook,
                                child: Text("Facbook Page"),
                              ),
                              PopupMenuItem(
                                onTap: _launchUrl,
                                child: Text("Instagram Page"),
                              ),
                            ]),
                  ),
                  label: ""),
            ]),
      ),
    );
  }

// Dilog Box oper
  void showModal(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: Text(
                "Rate Us",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              content: Text(
                  "if you like this app, then please take a moment and rate us. it will really help us! Thank you"),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Never")),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Not Now")),
                TextButton(onPressed: _launchUrlapp, child: Text("Yest Sure!"))
              ],
            ));
  }
}
