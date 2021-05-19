import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'images/uk.png'),
    WorldTime(
        url: 'Europe/Berlin', location: 'Athens', flag: 'images/greece.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'images/egypt.png'),
    WorldTime(
        url: 'Africa/Nairobi', location: 'Nairobi', flag: 'images/kenya.png'),
    WorldTime(
        url: 'America/Chicago', location: 'Chicago', flag: 'images/usa.png'),
    WorldTime(
        url: 'America/New_York', location: 'New York', flag: 'images/usa.png'),
    WorldTime(
        url: 'Asia/Seoul', location: 'Seoul', flag: 'images/south_korea.png'),
    WorldTime(
        url: 'Asia/Jakarta', location: 'Jakarta', flag: 'images/indonesia.png'),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();

    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime' : instance.isDayTime,      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Choose a location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    updateTime(index);
                  },
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/${locations[index].flag}'),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
