import 'package:flutter/material.dart';
import 'album.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({Key? key, required this.album}) : super(key: key);

  final Album album;

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  final double _value = 0;
  int playtime = const Duration(seconds: 300).inSeconds;
  bool onTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.all(30),
            child: Image.asset(widget.album.imagePath),
          ),
          Column(
            children: [
              Text(
                widget.album.title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Text(
                widget.album.artist,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey),
              ),
            ],
          ),
          Column(
            children: [
              Slider(
                  min: 0,
                  max: 300,
                  activeColor: Colors.white,
                  value: playtime.toDouble(),
                  onChanged: (e) => setState(() {
                        playtime = e.toInt();
                      })),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(playtime.toString(),
                        style: const TextStyle(
                          color: Colors.grey,
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text("5:00", style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  iconSize: 50,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.skip_previous,
                  )),
              IconButton(
                  iconSize: 70,
                  onPressed: () {
                    setState(() {
                      onTapped = !onTapped;
                    });
                  },
                  icon: onTapped
                      ? const Icon(
                          Icons.stop_circle,
                        )
                      : const Icon(
                          Icons.play_circle,
                        )),
              IconButton(
                  iconSize: 50,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.skip_next,
                  )),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
