import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app1/Models/weather_model.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({required this.weatherModel}) ;
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Weather App"),
        centerTitle: true,
      ),*/
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${weatherModel.cityName}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            Text(
              'updated at ${weatherModel.lastDate}',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  "https:${weatherModel.image}",
                  //"https://img.freepik.com/premium-vector/weather-forecast-partly-sunny-icon-flat-color-style_755164-384.jpg",
                  height: 100,
                ),
                Text(
                  '20°C',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Maxtemp:${weatherModel.maxTemp}°C',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Mintemp: ${weatherModel.minTemp}°C',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'Sunny',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
