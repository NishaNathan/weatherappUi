import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:weatherapp/constants/constants.dart';
import 'package:weatherapp/listdata/listdata.dart';
import 'package:weatherapp/widgets/todayscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 1, 26, 51),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Text(
                      "Lucknow",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.0,
                          color: Colors.white),
                    ),
                  )),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Text(
                      "Aug 12,2023",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "images/weather_icon_1.png",
                      width: 50,
                    ),
                    Container(
                      height: 30, // Adjust the height of the line
                      width: 3, // Adjust the width of the line
                      color: const Color.fromARGB(
                          255, 128, 128, 128), // Set the color of the line
                    ),
                    const Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "28",
                              style: TextStyle(
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              '°',
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              'mist',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      commonIconBox(WeatherIcons.night_alt_cloudy_windy,
                          iconColor, "0.0km/h"),
                      commonIconBox(WeatherIcons.cloudy, iconColor, "75%"),
                      commonIconBox(WeatherIcons.humidity, iconColor, "89%"),
                    ],
                  ),
                  const Text(
                    "Today",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: weatherlist.length,
                      itemBuilder: (context, index) {
                        return TodayWidget(
                          timetext: weatherlist[index].time,
                          icon: weatherlist[index].icon,
                          iconcolor: weatherlist[index].iconColor,
                          bgColor: weatherlist[index].bgColor,
                        );
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: SizedBox(
                  height: 300,
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0))),
                    child: Column(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: const Text(
                              "Next Day",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )),
                        SizedBox(
                          height: 239,
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: nextDaylist.length,
                            itemBuilder: (context, index) {
                              return nextDayWidget(
                                  context,
                                  nextDaylist[index].day,
                                  nextDaylist[index].icon,
                                  nextDaylist[index].temp);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
