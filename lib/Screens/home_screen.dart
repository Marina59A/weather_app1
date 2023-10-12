import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app1/Screens/new_weather_screen.dart';
import 'package:weather_app1/Screens/search_screen.dart';
import 'package:weather_app1/Screens/weather_screen.dart';
import 'package:weather_app1/manger/cubit/weather_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Weather App",
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext) => SearchScreen()));
            },
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          if(state is WeatherInitial){
            return NewWeatherBody();
          }
          else if(state is WeatherLoading){
            return WeatherScreen(weatherModel: state.weatherModel);
          }else{
            return NewWeatherBody();
          }
          
        },
      ),
    );
  }
}
