import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  final locationWeather;
  LocationScreen({this.locationWeather});

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  double temperature;
  int condition;
  String country;
  String cityName;
  String description;

  @override
  void initState() {
    super.initState();
    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic weatherData) {
    temperature = weatherData['main']['temp'];
    condition = weatherData['weather'][0]['id'];
    country = weatherData['sys']['country'];
    cityName = weatherData['name'];
    description = weatherData['weather'][0]['description'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Text(
                  '$condition',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '$cityName',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '($country)',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '$temperature',
                      style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '$description',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
