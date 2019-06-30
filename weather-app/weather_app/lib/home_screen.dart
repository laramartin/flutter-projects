import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:weather_app/data/forecast_weather_model.dart';
import 'package:weather_app/ui/cities_screen.dart';
import 'package:weather_app/ui/currentweather/current_weather_content.dart';
import 'package:weather_app/ui/currentweather/current_weather_header.dart';
import 'package:weather_app/ui/favorite_screen.dart';
import 'package:weather_app/ui/forecast/forecast_item.dart';
import 'package:weather_app/ui/forecast/forecast_widget.dart';
import 'package:weather_app/ui/preferences_screen.dart';
import 'package:weather_app/utils/utils.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'data/current_weather_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    var currentWeatherModel =
        ScopedModel.of<CurrentWeatherModel>(context, rebuildOnChange: true);
    var forecastWeatherModel =
        ScopedModel.of<ForecastWeatherModel>(context, rebuildOnChange: true);
    getCurrentTimeDate(currentWeatherModel.getCurrentWeatherTimestamp());

    if (currentWeatherModel.getCurrentWeatherTimestamp() == null ||
        forecastWeatherModel.getForecasts() == null) {
      return Container(
        color: Colors.yellow,
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text("Weather"),
        ),
        body: AnimatedSwitcher(
          duration: Duration(milliseconds: 200),
          child: _selectedScreen(
              currentWeatherModel, forecastWeatherModel, currentIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), title: Text("Favorite")),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.globe), title: Text("Cities")),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.thermometerEmpty),
                title: Text("Preferences")),
          ],
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
        ),
      );
    }
  }

  Widget _selectedScreen(CurrentWeatherModel currentWeatherModel,
      ForecastWeatherModel forecastWeatherModel, int index) {
    switch (index) {
      case 0:
        return FavoriteScreen(
            currentWeatherModel: currentWeatherModel,
            forecastWeatherModel: forecastWeatherModel);
      case 1:
        return CitiesScreen();
      case 2:
        return PreferencesScreen();
    }
    return Container(); // FIX ME: UGLY UGH
  }
}

// TODO: move outside
List<ForecastItem> mapForecastToForecastItems(ForecastWeatherModel model) {
  var forecasts = model.getForecasts();
  var forecastItems = List<ForecastItem>();
  forecasts.forEach((forecastDay) {
    ForecastItem item = ForecastItem(
      day: getFormattedDayOfWeek(
          getDayOfWeek(model.getForecastTimeStamp(forecastDay))),
      minTemperature: model.getForecastMinTemperature(forecastDay),
      maxTemperature: model.getForecastMaxTemperature(forecastDay),
      iconId: model.getForecastIcon(forecastDay),
    );
    forecastItems.add(item);
  });
  return forecastItems;
}
