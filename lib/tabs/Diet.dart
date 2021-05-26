import 'package:reward_fitness/components/Header.dart';
import 'package:reward_fitness/components/tab_view_base.dart';
import 'package:flutter/material.dart';

class Diet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.blue[100],
              flexibleSpace: Header(
                'Diet',
                rightSide: Container(
                  height: 35.0,
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  margin: EdgeInsets.only(right: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text(
                      'Tracker',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
              bottom: TabBar(
                tabs: <Widget>[
                  Container(
                    height: 30.0,
                    child: Tab(
                      text: 'Breakfast',
                    ),
                  ),
                  Container(
                    height: 30.0,
                    child: Tab(
                      text: 'Lunch',
                    ),
                  ),
                  Container(
                    height: 30.0,
                    child: Tab(
                      text: 'Dinner',
                    ),
                  ),
                  Container(
                    height: 30.0,
                    child: Tab(
                      text: 'Snacks',
                    ),
                  ),
                ],
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black45,
                indicatorWeight: 4.0,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.blue,
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                TabViewBase(
                  tabName: 'Breakfast',
                ),
                TabViewBase(
                  tabName: 'Lunch',
                ),
                TabViewBase(
                  tabName: 'Dinner',
                ),
                TabViewBase(
                  tabName: 'Snacks',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}