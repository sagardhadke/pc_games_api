import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pc_games_api/model/pcGames.dart';

class MyPcGamesApi extends StatefulWidget {
  const MyPcGamesApi({super.key});

  @override
  State<MyPcGamesApi> createState() => _MyPcGamesApiState();
}

class _MyPcGamesApiState extends State<MyPcGamesApi> {
  List<PcGames>? ofgames;

  void GetGameDetails() async {
    try {
      var gameApi = await http
          .get(Uri.parse("https://www.freetogame.com/api/games?platform=pc"));

      if (gameApi.statusCode == 200) {
        ofgames = PcGames.ofgames(jsonDecode(gameApi.body));
        print(ofgames);
        setState(() {});
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  void initState() {
    GetGameDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF282A41),
      appBar: AppBar(
        title: Text("Pc Games"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          ofgames == null
              ? Center(
                  child: CircularProgressIndicator.adaptive(),
                )
              : Expanded(
                  child: ListView.builder(
                      itemCount: ofgames!.length,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            width: double.infinity,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xFF3D3F54)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.network(
                                    "https://www.freetogame.com/g/516/thumbnail.jpg",
                                    width: 120,
                                    height: 120,
                                  ),
                                ),
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 5),
                                      Text(
                                        "PUBG: BATTLEGROUNDS",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Get into the action in one of the longest running battle royale games PUBG Battlegrounds.",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        "PC (Windows)",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Developer : KRAFTON, Inc.",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Releae Date : 2022-01-12",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                )
        ],
      ),
    );
  }
}
