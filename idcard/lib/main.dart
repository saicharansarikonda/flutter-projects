import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: NinjaCard(),
      ),
    );

class NinjaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text("Ninja ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/image_icons/image1.jpg'),
            ),
            Text(
              "Name",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height:8.0),
            Text(
             "Saicharan Sarikonda",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.amber,
                letterSpacing: 1.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:30.0),
            Text(
              "Current Learning Level",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height:8.0),
            Text(
             "Medium",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.amber,
                letterSpacing: 1.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.indigo[400],
                  size: 18.0,
                ),
                SizedBox(width: 8),
                Text(
                  "saicharansarikonda51@gmail.com",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 13.0,
                    letterSpacing: 1.0,
                    ),
                    
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
