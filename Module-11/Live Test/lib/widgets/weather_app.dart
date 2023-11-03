import 'package:flutter/material.dart';
import 'package:live_test_11/models/city_weather.dart' show CityWeather;

class WeatherApp extends StatelessWidget {
  final List<CityWeather> citiesWeather = [
    CityWeather(
      city: "New York",
      temperature: 20,
      condition: "Clear",
      humidity: 60,
      windSpeed: 5.5,
    ),
    CityWeather(
      city: "Los Angeles",
      temperature: 25,
      condition: "Sunny",
      humidity: 50,
      windSpeed: 6.8,
    ),
    CityWeather(
      city: "London",
      temperature: 15,
      condition: "Partly Cloudy",
      humidity: 70,
      windSpeed: 4.2,
    ),
    CityWeather(
      city: "Tokyo",
      temperature: 28,
      condition: "Rainy",
      humidity: 75,
      windSpeed: 8.0,
    ),
    CityWeather(
      city: "Sydney",
      temperature: 22,
      condition: "Cloudy",
      humidity: 55,
      windSpeed: 7.3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather Information"),
      ),
      body: ListView.builder(
        itemCount: citiesWeather.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              elevation: 3,
              child: ListTile(
                title: Text(citiesWeather[index].city),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Temperature: ${citiesWeather[index].temperature}°C"),
                    Text("Condition: ${citiesWeather[index].condition}"),
                    Text("Humidity: ${citiesWeather[index].humidity}%"),
                    Text("Wind Speed: ${citiesWeather[index].windSpeed} km/h"),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
