import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('ListView/GridView'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'ListView'),
                Tab(text: 'GridView'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListViewTab(),
              GridViewTab(),
            ],
          ),
        ),
      ),
    );
  }
}

class ListViewTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('ListView Item $index'),
          );
        },
      ),
    );
  }
}

class GridViewTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.blue,
            child: Center(
              child: Text('GridView Item $index'),
            ),
          );
        },
      ),
    );
  }
}
