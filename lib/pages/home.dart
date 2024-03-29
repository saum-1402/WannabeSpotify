import 'package:flutter/material.dart';
import 'package:spotify/pages/playscreen.dart';

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(0, 0, 150, 100);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: const [
            CircleAvatar(
              backgroundColor: Colors.purpleAccent,
              radius: 20,
              child: Text("S",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  )),
            ),
            SizedBox(
              width: 10,
            ),
            Chip(
              label: Text(
                "All",
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.green,
            ),
            SizedBox(
              width: 10,
            ),
            Chip(
              label: Text(
                "Music",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.black45,
            ),
            SizedBox(
              width: 10,
            ),
            Chip(
              label: Text(
                "Podcasts",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.black45,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children:  [
                GestureDetector(
                  onTap:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayScreen()));
                  },
                  child: const Card(
                    color: Colors.black,
                    child: Image(
                      image: AssetImage('images/la_la_land.jpg'),
                      // fit: BoxFit,
                      // style: TextStyle(
                      //   color: Colors.white
                      // ),
                    ),
                  ),
                ),
                const Card(
                  color: Colors.black,
                  child: Image(
                    image: AssetImage('images/Interstellar.jpg'),
                    // fit: BoxFit,
                    // style: TextStyle(
                    //   color: Colors.white
                    // ),
                  ),
                ),
                const Card(
                  color: Colors.black,
                  child: Image(
                    image: AssetImage('images/spiderman.jpg'),
                    // fit: BoxFit,
                    // style: TextStyle(
                    //   color: Colors.white
                    // ),
                  ),
                ),
                const Card(
                  color: Colors.black,
                  child: Image(
                    image: AssetImage('images/dune2.jpg'),
                    // fit: BoxFit,
                    // style: TextStyle(
                    //   color: Colors.white
                    // ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          // notchMargin: 25,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                Icons.home_filled,
                color: Colors.black,
                size: 40,
              ),
              Icon(
                Icons.search,
                color: Colors.black,
                size: 40,
              ),
              Icon(
                Icons.library_music_rounded,
                color: Colors.black,
                size: 40,
              ),
              Icon(
                Icons.settings,
                color: Colors.black,
                size: 40,
              ),
            ],
          )),
    );
  }
}
