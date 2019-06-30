import 'package:weather_app/data/model/forecastweather/forecast_day.dart';
import 'package:weather_app/presentation/forecast/forecast_item.dart';
import 'package:intl/intl.dart';

getWeatherIcon(String iconId) {
  print("getWeatherIcon($iconId)");
  if (iconId == null) return "assets/ic-weather-unknown.png";

  switch (iconId) {
    case "01d":
      return "assets/ic-weather-sunny.png";
    case "01n":
      return "assets/ic-weather-moon.png";
    case "02d":
      return "assets/ic-weather-partially-clouded.png";
    case "02n":
      return "assets/ic-weather-moon-clouds.png";
    case "03d":
    case "03n":
      return "assets/ic-weather-scattered-clouds.png";
    case "04d":
    case "04n":
      return "assets/ic-weather-cloudy.png";
    case "09d":
    case "09n":
      return "assets/ic-weather-heavy-rain.png";
    case "10d":
    case "10n":
      return "assets/ic-weather-light-rain.png";
    case "11d":
    case "11n":
      return "assets/ic-weather-thunder.png";
    case "13d":
    case "13n":
      return "assets/ic-weather-snow.png";
    case "50d":
    case "50n":
      return "assets/ic-weather-fogg.png";
    case "weather-unknown":
    default:
      return "assets/ic-weather-unknown.png";
  }
}

DateTime getDateTime(int timestamp) =>
    DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);

int getDayOfWeek(int timestamp) {
  var date = getDateTime(timestamp);
  print("timestamp: $timestamp, day: ${date.day}, weekday: ${date.weekday},"
      " year: ${date.year}");
  return date.weekday;
}

String getFormattedDayOfWeek(int weekday) {
  switch (weekday) {
    case 1:
      return "Mon";
      break;
    case 2:
      return "Tue";
      break;
    case 3:
      return "Wed";
      break;
    case 4:
      return "Thu";
      break;
    case 5:
      return "Fri";
      break;
    case 6:
      return "Sat";
      break;
    case 7:
      return "Sun";
      break;
  }
  return "?";
}

String getCurrentTimeDate(int timestamp) {
  var date = getDateTime(timestamp);
  var formatter = DateFormat("E, MMM d");
  String formattedDate = formatter.format(date);
  return formattedDate;
}

String getCurrentTimeHours(int timestamp) {
  var date = getDateTime(timestamp);
  var formatter = DateFormat("Hm");
  String formattedTime = formatter.format(date);
  return formattedTime;
}
