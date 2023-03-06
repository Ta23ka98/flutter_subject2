import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  double _value = 0.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Image.asset("images/music_image1.png"),
          ),
          Column(
            children: const [
              Text(
                "Catharsis",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Text(
                "Jacob Muller",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey),
              ),
            ],
          ),
          Column(
            children: [
              Slider(value: _value, onChanged: null),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("data"),
                  Text("data"),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              IconButton(onPressed: null, icon: Icon(Icons.play_arrow)),
              IconButton(onPressed: null, icon: Icon(Icons.play_arrow)),
              IconButton(onPressed: null, icon: Icon(Icons.play_arrow)),
            ],
          ),
        ],
      ),
    );
  }
}
