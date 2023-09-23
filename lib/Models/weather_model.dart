class WeatherModel{
  final  String cityName;
  final  String lastDate;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherCondition;
  final String image;

  WeatherModel({
    required this.cityName,
    required this.lastDate,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherCondition,
    required this.image});

  factory WeatherModel.fromJson(json){
    return WeatherModel(
      cityName: json["location"]["name"],
       lastDate: json["current"]["last_updated"],
        temp: json["current"]["temp_c"],
         maxTemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
          minTemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
           weatherCondition:json["forecast"]["forecastday"][0]["day"]["condition"]["text"],
            image: json["forecast"]["forecastday"][0]["day"]["condition"]["icon"],);
  }
}