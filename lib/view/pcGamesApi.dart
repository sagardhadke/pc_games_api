import 'package:flutter/material.dart';

class MyPcGamesApi extends StatefulWidget {
  const MyPcGamesApi({super.key});

  @override
  State<MyPcGamesApi> createState() => _MyPcGamesApiState();
}

class _MyPcGamesApiState extends State<MyPcGamesApi> {
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
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF3D3F54)),
          )
        ],
      ),
    );
  }
}
