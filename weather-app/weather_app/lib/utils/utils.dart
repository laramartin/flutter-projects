getWeatherIcon(String iconId) {
  print("getWeatherIcon($iconId)");
  if (iconId == null) return "assets/ic-weather-unknown.png";

  switch (iconId) {
    case "01d":
      return "assets/ic-weather-sunny.png.png";
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
