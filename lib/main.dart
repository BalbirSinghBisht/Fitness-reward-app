import 'package:reward_fitness/tabs/tabs.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reward Fitness',
      theme: ThemeData(fontFamily: 'Geometria'),
      home: Scaffold(
        body: Tabs(),
      ),
    );
  }
}




