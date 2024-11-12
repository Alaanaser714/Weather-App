import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherServices {
  final Dio dio;
  final String baseUrl = "https://api.weatherapi.com";
  final String apiKey = "faa3c7e56fa0412882b184944240311";

  WeatherServices(this.dio);

  Future<WeatherModel> getWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get("$baseUrl/v1/forecast.json?key=$apiKey&q=$cityName&days=1");
      WeatherModel weatherModel = WeatherModel.fromjson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'Something went wrong, try again later.';
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception("error,please try later");
    }
  }
}
