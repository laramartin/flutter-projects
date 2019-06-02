getWeatherIcon(String iconId) {
  if (iconId == null) return "assets/ic-weather-unknown";

  switch (iconId) {
    case "01d":
      return "assets/ic-weather-sunny.png";
    case "01n":
      return "assets/ic-weather-moon";
    case "02d":
      return "assets/ic-weather-partially-clouded";
    case "02n":
      return "assets/ic-weather-moon-clouds";
    case "03d":
    case "03n":
      return "assets/ic-weather-scattered-clouds";
    case "04d":
    case "04n":
      return "assets/ic-weather-cloudy";
    case "09d":
    case "09n":
      return "assets/ic-weather-heavy-rain";
    case "10d":
    case "10n":
      return "assets/ic-weather-light-rain";
    case "11d":
    case "11n":
      return "assets/ic-weather-thunder";
    case "13d":
    case "13n":
      return "assets/ic-weather-snow";
    case "50d":
    case "50n":
      return "assets/ic-weather-fogg";
    case "weather-unknown":
    default:
      return "assets/ic-weather-unknown";
  }
}
