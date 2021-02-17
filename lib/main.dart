import 'package:flutter/material.dart';

void main() {
  // WidgetsApp //MaterialApp //CupertinoApp
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AwesomeApp"),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.teal,  
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Jonathas"), 
              accountEmail: Text("jonathas.fps@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2700&q=80")
              ),

            ),
            ListTile(
              leading: Icon(Icons.person),

              title: Text("Jonathas Germano"),
              subtitle: Text("IT Analyst"),
              trailing: Icon(Icons.edit),
              onTap: () {},
              
            ),
            ListTile(
              leading: Icon(Icons.person),

              title: Text("Ilehana Paola"),
              subtitle: Text("German Translator"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.person),

              title: Text("José Pereira"),
              subtitle: Text("Life Coach"),
              trailing: Icon(Icons.edit),
            ),
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
        ),
    );
  }
}
