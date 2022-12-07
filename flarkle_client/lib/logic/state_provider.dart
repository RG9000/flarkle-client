import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart';

class StateProvider extends ChangeNotifier {
  late Socket socket;

  // TODO this should be an enum ideally
  int gameState = 0;
  String opponentId = "";
  bool myTurn = false;

  void initialize() {
    socket = io(
        'http://localhost:3000',
        OptionBuilder().setTransports(['websocket']) // for Flutter or Dart VM
            .build());
            
    socket.onConnect((_) {
      print('connect');
    });
    socket.on('game found', (data) {
      opponentId = data.toString();
      startGame(false);
    });
    socket.on('connected to', (data) {
      opponentId = data.toString();
      startGame(true);
    });
    socket.connect();
    findGame();
  }

  void findGame() {
    socket.emit('find game');
  }

  void startGame(bool goFirst) {
    gameState = 1;
    myTurn = goFirst;
    notifyListeners();
  }
}
