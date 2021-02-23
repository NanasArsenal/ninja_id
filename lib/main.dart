import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Ninjacard(),
  ));
}

class Ninjacard extends StatefulWidget {
  @override
  _NinjacardState createState() => _NinjacardState();
}

class _NinjacardState extends State<Ninjacard> {
  int gamelevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
          title: Text(
            'NinjaID card',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[800],
          elevation: 0.0),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[600],
        onPressed: () {
          setState(() {
            gamelevel += 1;
          });
        },
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/enkay.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[600],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Enkay',
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$gamelevel',
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'PERSONAL INFO',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),

            //row to keep personal user nfo pon a line
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "enkay574@protonmail.com",
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
