import 'package:busca_github/screen/SeachScreen.dart';
import 'package:busca_github/screen/UserScreen.dart';
import 'package:flutter/material.dart';

class TabsBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    final _kTabPages = <Widget>[
      Center(child: SeachScreen()),
      Center(child: UserScreen())
    ];

    final _kTabs = <Tab>[
      Tab(icon: Icon(Icons.adb)),
      Tab(icon: Icon(Icons.account_box))
    ];

    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            bottom: TabBar(
              tabs: _kTabs,
            ),
          ),
        ),
        body: TabBarView(
          children: _kTabPages,
        ),
      )
    );
  }
}