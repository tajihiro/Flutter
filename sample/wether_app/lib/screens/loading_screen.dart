import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:wetherapp/screens/location_screen.dart';
import 'package:wetherapp/services/location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wetherapp/services/networking.dart';
import 'package:wetherapp/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LocationScreen(
            locationWeather: weatherData,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitWave(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
