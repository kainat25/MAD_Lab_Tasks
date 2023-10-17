import 'package:flutter/material.dart';

void main() {
  runApp(MyChatApp());
}

class MyChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat App'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Handle more options action
            },
          ),
        ],
      ),
      body: Center(
        child: Card(
          elevation: 2,
          margin: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.person),
                title: Text('kainat'),
                subtitle: Text("Hey how are you?"),
                trailing: Text('2:30 PM'),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('kanza'),
                subtitle: Text(" thanks!"),
                trailing: Text('3:15 PM'),
              ),
              // Add more chat messages here
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'User Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle settings action
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                // Handle about action
              },
            ),
          ],
        ),
      ),
    );
  }
}
