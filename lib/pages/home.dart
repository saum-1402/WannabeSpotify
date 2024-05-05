import 'package:flutter/material.dart';
import 'package:spotify/pages/playscreen.dart';
import 'package:spotify/user/playlist.dart';

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
        title: const Row(
          children: [
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
                "Artists",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.black45,
            ),
          ],
        ),
      ),
      body: const Column(
        children: [
          PlayList()
          ],
      ),
      bottomNavigationBar: const BottomAppBar(
          // notchMargin: 25,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
          ),
      ),
    );
  }
}
