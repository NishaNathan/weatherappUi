import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

class TodayWidget extends StatefulWidget {
  TodayWidget({super.key, this.timetext,this.icon,this.iconcolor,this.bgColor});
  String? timetext;
  IconData? icon;
  Color? iconcolor;
  Color? bgColor;
  @override
  State<TodayWidget> createState() => _TodayWidgetState();
}

class _TodayWidgetState extends State<TodayWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          padding:
              const EdgeInsets.only(top: 20.0, bottom: 20.0, right: 15.0, left: 15.0),
          height: 180,
          //width: 100,
          //padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: widget.bgColor,//Colors.grey.shade200,
              borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.timetext.toString()),//"12:00 AM"),
              BoxedIcon(
                widget.icon!,
                color: widget.iconcolor,
              ),
              const Text('28 °')
            ],
          )),
    );
  }
}
