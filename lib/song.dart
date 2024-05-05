class Song {
  final int key;
  final String name;
  final String imageUrl;
  final String movie;
  final String songlink;

  const Song({
    required this.key,
    required this.name,
    required this.imageUrl,
    required this.movie,
    required this.songlink
  });
}

final List<Song> songs = [
  const Song(
    key: 1,
    name: "City of Stars",
    imageUrl: "images/la_la_land.jpg",
    movie: 'La La Land',
    songlink: 'songs/City Of Stars (From _La La Land_ Soundtrack).mp3'
  ),
  const Song(
      key: 2,
    name: "Interstellar",
    imageUrl: "images/Interstellar.jpg",
    movie: 'Interstellar',
      songlink: 'songs/City Of Stars (From _La La Land_ Soundtrack).mp3'
  ),
  const Song(
      key: 3,
    name: "Spiderman",
    imageUrl: "images/spiderman.jpg",
    movie: 'Spiderman-Across the Spiderverse',
      songlink: 'songs/City Of Stars (From _La La Land_ Soundtrack).mp3'
  ),
  const Song(
      key: 4,
    name: "Dune title track",
    imageUrl: "images/dune2.jpg",
    movie: 'Dune 2',
      songlink: 'songs/City Of Stars (From _La La Land_ Soundtrack).mp3'
  ),
  const Song(
    key: 5,
      name: 'La Boheme',
      imageUrl: 'images/Demolition.png',
      movie: 'Demolition',
      songlink: 'songs/City Of Stars (From _La La Land_ Soundtrack).mp3'
  ),
  const Song(
      key: 6,
      name: 'Adagio in G Minor',
      imageUrl: 'images/manchester_by_the_sea.jpg',
      movie: 'Manchester By The Sea',
      songlink: 'songs/City Of Stars (From _La La Land_ Soundtrack).mp3'
  ),
  // Add more songs as needed
];
