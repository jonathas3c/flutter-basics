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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var myText = "Change my name";
  TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("AwesomeApp"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
                      child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/mac-lights.jpg",    
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      myText, 
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter some text",
                          labelText: "Name",
                        )
                      ),
                    )
                  ],
              )
            ),
          ),
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
                backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/16863727?s=460&u=f8f179e01d537d46e44e4eb7787ad0034c2d6efa&v=4")
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
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
        ),
    );
  }
}
