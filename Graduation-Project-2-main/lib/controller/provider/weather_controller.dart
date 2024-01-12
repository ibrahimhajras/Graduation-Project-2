import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:gradproject2/models/api_weather/weather_models.dart';
import 'package:http/http.dart' as http;

class WeatherProvider extends ChangeNotifier {
  WeatherModel weatherlist = WeatherModel();
  String apiKey = '3ae593a78fe1f289da9bcc2e3b883104';

  getProduct(String city) async {
    EasyLoading.show(status: 'loading...');

    try {
      http.Response response = await http.get(
          Uri.parse('https://api.openweathermap.org/data/2.5/forecast?q=$city&appid=$apiKey&units=metric'));

      EasyLoading.dismiss();

      if (response.statusCode == 200) {
        var jsonBody = jsonDecode(response.body);
        WeatherModel weather = WeatherModel.fromJson(jsonBody);
        weatherlist= weather;
        print(weatherlist.list![0].main!.temp);
      } else {
        print("Error: ${response.statusCode}");
      }
    } catch (error) {
      print("Error: $error");
    }

    notifyListeners();
  }
}
