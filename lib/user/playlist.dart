import 'package:flutter/material.dart';
import '../pages/playscreen.dart';
import '../song.dart';

class PlayList extends StatefulWidget {
  const PlayList({Key? key}) : super(key: key);

  @override
  State<PlayList> createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  @override
  Widget build(BuildContext context) {
    print(songs.length);
    return Expanded(

      child: ListView.builder(

        itemCount: (songs.length / 2).ceil(), // Calculate number of rows
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              buildCard(index * 2), // First card in the row
              const SizedBox(width: 8), // Add some spacing between cards
              buildCard(index * 2 + 1), // Second card in the row, if available
            ],
          );
        },
      ),
    );
  }

  Widget buildCard(int index) {
    if (index >= songs.length) {
      return const SizedBox(); // Return an empty SizedBox if index exceeds the number of songs
    }
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const PlayScreen()));
        },
        child: Card(
          color: Colors.black,
          child: Image(
            image: AssetImage(songs[index].imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
