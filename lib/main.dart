import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'MenuItem.dart';
import 'Screens/Screens.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int activeItemIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomAppBar(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      activeItemIndex = 0;
                    });
                  },
                  child: MenuItem(
                    animationName: "Gallery",
                    animation: activeItemIndex == 0 ? "go" : "idle",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      activeItemIndex = 1;
                    });
                  },
                  child: MenuItem(
                    animationName: "Camera",
                    animation: activeItemIndex == 1 ? "go" : "idle",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      activeItemIndex = 2;
                    });
                  },
                  child: MenuItem(
                    animationName: "Favourites",
                    animation: activeItemIndex == 2 ? "go" : "idle",
                  ),
                ),
              ],
            ),
            color: Colors.black,
            height: 70.0,
          ),
        ),
        body: activeItemIndex == null
            ? Gallery()
            : [Gallery(), Camera(), Favourites()][activeItemIndex] //body(),
        );
  }
}

//size, format, name, going back
//camera all
//better onTap for Tab Bar

//Tab Bar How ??

//why list of tabs above @override not working ?
//fireship code
//better method of tabs
//why 'can't access this in a class initialiser' if list abpve override
//better tab bar

//see personal site, encrypter site, and all

//image picker flutter, camera, path, favourites

//ios camera and gallery

//gallery, camera, favourites, path, local storage and all

//image picker is for normal use, camera is for more customisation
//all image

//file object, local storage

//proper camera and gallery
