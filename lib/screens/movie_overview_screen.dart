import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ust_mobile_lanjut/widgets/movie_grid.dart';

class MovieOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(tabs: [
            Tab(child: Text("SEDANG TAYANG",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),),),
            Tab(child: Text("AKAN DATANG",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),),),
          ]),
          title: Text('Film Bioskop'),
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black),
          leading: Icon(Icons.arrow_back, color: Colors.black,size: 30,),
        ),
        body: TabBarView(children: [MovieGrid(), MovieGrid()]),
      ),
    );
  }
}
