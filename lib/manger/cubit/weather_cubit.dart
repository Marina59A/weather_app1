import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app1/Models/weather_model.dart';
import 'package:weather_app1/services/weather_service.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());

  getWeather({required city})async{
    try {
  WeatherModel weatherModel =await WeatherService().getWeatherData(CityName: city);
  emit(WeatherLoading(weatherModel: weatherModel));
} on Exception catch (e) {
  emit(WeatherFailure());
}
  }
}
