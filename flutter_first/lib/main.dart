import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: NinjaCard(),
  ));

class  NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjalevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation:0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState((){
            ninjalevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40,30,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Center(
            child: CircleAvatar(
              backgroundImage:AssetImage('assets/Monster test.png'),
              radius: 40,
            ),
          ),
          Divider(
            height: 60,
            color: Colors.grey[800],
          ),
          Text(
            'NAME',
            style: TextStyle (
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Apocalypse',
            style: TextStyle (
              color: Colors.amberAccent[200],
              letterSpacing: 2.0,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
          Text(
            'Current Ninja Level',
            style: TextStyle (
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '$ninjalevel',
            style: TextStyle (
              color: Colors.amberAccent[200],
              letterSpacing: 2.0,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
          Row(
            children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.grey[400],
              ),
              SizedBox(width: 10),
              Text(
                'Apo@gmail.com',
                style: TextStyle(
                  color: Colors.grey [400],
                  fontSize: 18,
                  letterSpacing: 1.0
                )
              )
            ]
          )
        ],
        ),
      ),
    );
  }
}



