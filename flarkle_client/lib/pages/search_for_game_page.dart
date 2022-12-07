import 'package:flarkle_client/pages/main_game_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../logic/state_provider.dart';

class SearchForGamePage extends StatefulWidget {
  const SearchForGamePage({Key? key}) : super(key: key);

  @override
  _SearchForGamePageState createState() => _SearchForGamePageState();
}

class _SearchForGamePageState extends State<SearchForGamePage> {
  @override
  void initState() {
    Provider.of<StateProvider>(context, listen: false).initialize();
    Provider.of<StateProvider>(context, listen: false).addListener(() {
      if (Provider.of<StateProvider>(context, listen: false).gameState == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MainGamePage()),
        );
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          const Spacer(),
          Image.asset(
            "images/spinning-loading.gif",
            height: 250.0,
            width: 250.0,
          ),
          const Text(
            "Searching for a game...",
            style: TextStyle(fontSize: 30),
          ),
          const Spacer(),
          const Spacer()
        ],
      )),
    );
  }
}
