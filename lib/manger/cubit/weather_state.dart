part of 'weather_cubit.dart';

abstract class WeatherState {}

final class WeatherInitial extends WeatherState {}
final class WeatherLoading extends WeatherState {
  final WeatherModel weatherModel;

  WeatherLoading({required this.weatherModel});
}
final class WeatherFailure extends WeatherState {}
