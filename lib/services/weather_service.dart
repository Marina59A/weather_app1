import 'package:dio/dio.dart';
import 'package:weather_app1/Models/weather_model.dart';

class WeatherService{
  late WeatherModel weatherModel;
  Dio dio=Dio();
  String baseUrl = "http://api.weatherapi.com/v1";
  String ApiKey = "529a54ffb895413da7f232312232209";
  //String CityName = "Qena";
  //String WeatherImage="//cdn.weatherapi.com/weather/64x64/day/113.png";


  bool isLoading = true;

  @override
 /* void initState(){
    super.initState();
    getWeatherData() ;
  }*/
  Future<WeatherModel> getWeatherData({required String CityName}) async {
    Response response =await dio.get(
      "$baseUrl/forecast.json?key=$ApiKey&q=$CityName&days=1&aqi=no&alerts=no");
    weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
    /*setState(() { });
    isLoading = false;
    print(weatherModel.image);*/
  }
}