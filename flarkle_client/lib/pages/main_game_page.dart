import 'package:flutter/material.dart';

class MainGamePage extends StatefulWidget {
  const MainGamePage({Key? key}) : super(key: key);

  @override
  _MainGamePageState createState() => _MainGamePageState();
}

class _MainGamePageState extends State<MainGamePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("FOUND A GAME!"),
    );
  }
}
