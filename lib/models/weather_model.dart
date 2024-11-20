class WeatherModel {
  final String cityName;
  final DateTime dateTime;
  final String? image;
  final double temp;
  final double maxTemp;
  final double mintemp;
  final String weatherState;

  WeatherModel({
    required this.cityName,
    required this.dateTime,
    this.image,
    required this.temp,
    required this.maxTemp,
    required this.mintemp,
    required this.weatherState,
  });

  factory WeatherModel.fromjson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      dateTime: DateTime.parse(json['current']['last_updated']),
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      mintemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      weatherState: json['forecast']['forecastday'][0]['day']['condition']
          ['text'],
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
    );
  }
}
