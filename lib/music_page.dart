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
            padding: const EdgeInsets.all(30),
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
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("0:00", style: TextStyle(color: Colors.grey)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text("5:00", style: TextStyle(color: Colors.grey)),
                  ),
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
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
