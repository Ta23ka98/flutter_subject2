import 'package:flutter/material.dart';
import 'package:flutter_subject2/music_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ホーム",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "あなたへのおすすめ",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ))
            ],
          ),
          SizedBox(
            height: 300,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 200,
                          width: 200,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset("images/music_image1.png")),
                        ),
                        const Text("Catharsis"),
                        const Text("Jacob Muller"),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => MusicPage()));
                    },
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "カテゴリー",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ))
            ],
          ),
          SizedBox(
            height: 300,
            child: GridView.count(
              childAspectRatio: (2 / 3),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              crossAxisCount: 2,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.purple, Colors.black]),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                        child: Text(
                      "クラシック",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.yellow, Colors.black]),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                        child: Text(
                      "カントリー",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.pink, Colors.red]),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                        child: Text(
                      "ポップ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.blue, Colors.white]),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                        child: Text(
                      "ロック",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.green, Colors.black]),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                        child: Text(
                      "ジャズ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.purple, Colors.black]),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                        child: Text(
                      "その他",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "ホーム"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "検索"),
          BottomNavigationBarItem(
              icon: Icon(Icons.playlist_play), label: "プレイリスト"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: "アカウント"),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
