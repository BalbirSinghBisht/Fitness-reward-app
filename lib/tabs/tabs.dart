import 'package:flutter/material.dart';
import 'package:reward_fitness/tabs/Diet.dart';
import 'package:reward_fitness/tabs/Programs.dart';
import 'package:reward_fitness/tabs/Results.dart';

class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.blue[100],
        body: TabBarView(
          children: <Widget>[
            Programs(),
            Diet(),
            Results(),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.explicit, size: 26.0),
            ),
            Tab(
              icon: Icon(Icons.restaurant_menu, size: 26.0),
            ),
            Tab(
              icon: Icon(Icons.insert_chart, size: 26.0),
            ),
          ],
          labelPadding: EdgeInsets.all(5.0),
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.black45,
          indicatorWeight: 0.01,
        ),
      ),
    );
  }
}