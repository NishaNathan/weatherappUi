import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:weatherapp/constants/constants.dart';

class ListData {
  String? time;
  IconData? icon;
  Color? iconColor;
  Color? bgColor;

  ListData({this.time, this.icon, this.iconColor, this.bgColor});
}

List<ListData> weatherlist = [
  ListData(
      time: "12.00 AM",
      icon: WeatherIcons.night_alt_cloudy_windy,
      iconColor: iconColor,
      bgColor: selectedColor),
  ListData(
      time: "01.30 AM",
      icon: WeatherIcons.rain,
      iconColor: iconColor,
      bgColor: cardBgColor),
      ListData(
      time: "02.30 AM",
      icon: WeatherIcons.cloudy_windy,
      iconColor: iconColor,
      bgColor: cardBgColor),
      ListData(
      time: "04.00 AM",
      icon: WeatherIcons.sunset,
      iconColor: iconColor,
      bgColor: cardBgColor),
      ListData(
      time: "09.00 AM",
      icon: WeatherIcons.sunrise,
      iconColor: iconColor,
      bgColor: cardBgColor),
];

ListData listdata = ListData();


class NextListData {
  String? day;
  IconData? icon;
  String? temp;
  

  NextListData({this.day, this.icon, this.temp,});
}

List<NextListData> nextDaylist = [
  NextListData(
      day: "Mon",
      icon: WeatherIcons.night_alt_cloudy_windy,
      temp: "37°/28"
      ),
  NextListData(
      day: "Tue",
      icon: WeatherIcons.cloudy,
      temp: "37°/28"
      ),
      NextListData(
      day: "Tue",
      icon: WeatherIcons.snow,
      temp: "37°/28"
      ),
      NextListData(
      day: "Wed",
      icon: WeatherIcons.sunset,
      temp: "37°/28"
      ),
      NextListData(
      day: "Thur",
      icon: WeatherIcons.sunrise,
      temp: "37°/28"
      ),
      NextListData(
      day: "Fri",
      icon: WeatherIcons.sunrise,
      temp: "37°/28"
      ),
      NextListData(
      day: "Sat",
      icon: WeatherIcons.sunrise,
      temp: "37°/28"
      ),
      NextListData(
      day: "Sun",
      icon: WeatherIcons.sunrise,
      temp: "37°/28"
      ),
];

NextListData nextlist = NextListData();
