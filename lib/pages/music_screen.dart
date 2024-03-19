import 'package:flutter/material.dart';

import 'package:just_audio/just_audio.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';


class MusicScreen extends StatefulWidget {
  MusicScreen({Key? key}) : super(key: key);

  @override
  State<MusicScreen> createState() => _MusicScreenState();

  String musicUrl = "";
  String thumbnail = "";

  var player = AudioPlayer();
  bool loaded = false;
  bool playing = false;

  void loadMusic() async {
    await player.setUrl(musicUrl);
    setState(() {
      loaded = true;
    });
  }

  void playMusic() async {
    setState(() {
      playing = true;
    });
    await player.play();
  }

  void pauseMusic() async {
    setState(() {
      playing = false;
    });
    await player.pause();
  }

  void initState() {
    loadMusic();
    super.initState();
  }

  void dispose() {
    player.dispose();
    super.dispose();
  }


class _MusicScreenState extends State<MusicScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
