import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

var iconColor = Colors.blue.shade400;
var selectedColor = Colors.blue.shade200;
var cardBgColor = Colors.grey.shade200;

commonIconBox(icon, iconClr, text) {
  return Column(
    //mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
          height: 60,
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(15.0)),
          child: BoxedIcon(
            icon, //WeatherIcons.night_alt_cloudy_windy,
            color: iconClr, //Colors.blue.shade400,
          )),
      const SizedBox(
        height: 5.0,
      ),
      Text(
        text, //"0.0km/h",
        style: const TextStyle(fontWeight: FontWeight.w500),
      )
    ],
  );
}

nextDayWidget(context,daytext,icon,temptxt) {
  return Padding(
    padding: const EdgeInsets.only(left:20.0,right:20.0,top:20.0,bottom: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(daytext),//"Mon"),
        BoxedIcon(
          icon,//WeatherIcons.sunrise,
          color: iconColor,
        ),
        Text(temptxt)//'37°/28')
      ],
    ),
  );
}
