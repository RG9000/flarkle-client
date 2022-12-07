import 'package:flarkle_client/pages/search_for_game_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("FLARKLE!"),
        ),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchForGamePage()),
                  );
                },
                child: const Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Find a Game",
                      style: TextStyle(fontSize: 30),
                    )))));
  }
}
