// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import '../componets/no_weather_body.dart';
import '../componets/weather_info_body.dart';
import 'search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          'Weather App',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchScreen(),
                    ));
              },
              icon: Icon(
                Icons.search,
              ))
        ],
      ),
      body: WeatherInfoBody(),
    );
  }
}
