import 'package:duckcination/models/child.dart';
import 'package:duckcination/provider/duck_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../models/vaccine.dart';
import '../elements/vaccine_card.dart';

class VaccineScreen extends StatefulWidget {
  const VaccineScreen({required this.vaccine, Key? key}) : super(key: key);
  final Vaccine vaccine;

  @override
  State<VaccineScreen> createState() => _VaccineScreenState();
}

class _VaccineScreenState extends State<VaccineScreen> {
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'usZHnat_nYA',
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    Child child = DuckProvider().getChild();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Duckcination'),
      ),
      backgroundColor: Colors.orange.shade200,
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Hero(
              tag: widget.vaccine.name!,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  child: Image.asset(
                    widget.vaccine.image!,
                    fit: BoxFit.contain,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ),
          ),
          YoutubePlayerBuilder(
            player: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.amber,
              progressColors: ProgressBarColors(
                playedColor: Colors.amber,
                handleColor: Colors.amberAccent,
              ),
              onReady: () {
                _controller.addListener(() {});
              },
            ),
            builder: (context, player) => player,
          ),
        ],
      )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
