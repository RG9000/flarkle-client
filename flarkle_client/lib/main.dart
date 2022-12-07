import 'package:flarkle_client/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'logic/state_provider.dart';

void main() {
  runApp(const FlarkleApp());
}

class FlarkleApp extends StatelessWidget {
  const FlarkleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => StateProvider(),
        child: Consumer<StateProvider>(
            builder: (context, model, child) => MaterialApp(
                  title: 'Flarkle',
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                    primarySwatch: Colors.amber,
                  ),
                  home: const HomePage(),
                )));
  }
}
