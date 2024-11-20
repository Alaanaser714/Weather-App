// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'view/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => GetWeatherCubit(),
        child: Builder(builder: (context) {
          return BlocBuilder<GetWeatherCubit, WeatherState>(
            builder: (context, state) {
              return MaterialApp(
                theme: ThemeData(
                    appBarTheme: AppBarTheme(
                        backgroundColor: getColorTheme(
                            BlocProvider.of<GetWeatherCubit>(context)
                                .weatherModel
                                ?.weatherState))),
                debugShowCheckedModeBanner: false,
                home: HomeScreen(),
              );
            },
          );
        }));
  }
}

MaterialColor getColorTheme(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }
  switch (condition) {
    case "Sunny":
      return Colors.amber;
    case "Clear":
      return Colors.blue;
    case "Partly cloudy":
      return Colors.blueGrey;
    case "Cloudy":
      return Colors.grey;
    case "Overcast":
      return Colors.blueGrey;
    case "Mist":
      return Colors.orange;
    case "Patchy rain possible":
      return Colors.blue;
    case "Patchy snow possible":
      return Colors.cyan;
    case "Patchy sleet possible":
      return Colors.lightBlue;
    case "Patchy freezing drizzle possible":
      return Colors.lightBlue;
    case "Thundery outbreaks possible":
      return Colors.deepPurple;
    case "Blowing snow":
      return Colors.blue;
    case "Blizzard":
      return Colors.indigo;
    case "Fog":
      return Colors.grey;
    case "Freezing fog":
      return Colors.blueGrey;
    case "Patchy light drizzle":
      return Colors.lightBlue;
    case "Light drizzle":
      return Colors.blue;
    case "Freezing drizzle":
      return Colors.cyan;
    case "Heavy freezing drizzle":
      return Colors.indigo;
    case "Patchy light rain":
      return Colors.lightBlue;
    case "Light rain":
      return Colors.blue;
    case "Moderate rain at times":
      return Colors.indigo;
    case "Moderate rain":
      return Colors.blue;
    case "Heavy rain at times":
      return Colors.deepPurple;
    case "Heavy rain":
      return Colors.purple;
    case "Light freezing rain":
      return Colors.cyan;
    case "Moderate or heavy freezing rain":
      return Colors.deepOrange;
    case "Light sleet":
      return Colors.lightBlue;
    case "Moderate or heavy sleet":
      return Colors.indigo;
    case "Patchy light snow":
      return Colors.cyan;
    case "Light snow":
      return Colors.cyan;
    case "Patchy moderate snow":
      return Colors.blueGrey;
    case "Moderate snow":
      return Colors.lightBlue;
    case "Patchy heavy snow":
      return Colors.indigo;
    case "Heavy snow":
      return Colors.deepPurple;
    case "Ice pellets":
      return Colors.grey;
    case "Light rain shower":
      return Colors.lightBlue;
    case "Moderate or heavy rain shower":
      return Colors.indigo;
    case "Torrential rain shower":
      return Colors.deepPurple;
    case "Light sleet showers":
      return Colors.lightBlue;
    case "Moderate or heavy sleet showers":
      return Colors.indigo;
    case "Light snow showers":
      return Colors.cyan;
    case "Moderate or heavy snow showers":
      return Colors.indigo;
    case "Light showers of ice pellets":
      return Colors.blueGrey;
    case "Moderate or heavy showers of ice pellets":
      return Colors.deepOrange;
    case "Patchy light rain with thunder":
      return Colors.deepOrange;
    case "Moderate or heavy rain with thunder":
      return Colors.deepPurple;
    case "Patchy light snow with thunder":
      return Colors.indigo;
    case "Moderate or heavy snow with thunder":
      return Colors.deepOrange;
    default:
      return Colors.blue;
  }
}
