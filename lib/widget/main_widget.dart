import 'dart:math';

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class MainWidget extends StatefulWidget {
  MainWidget({Key? key,
    required this.title,
    required this.description,
    this.color = Colors.transparent,
    this.textColor = Colors.white,
    this.redirectUrl,
    this.marginTop = 0,
    this.marginLeft = 0,
    this.marginRight = 0,
    this.marginBottom = 10,
  }) : super(key: key);

  final String title;
  final String description;
  final String? redirectUrl;
  final Color textColor;
  final Color color;
  double marginTop;
  double marginLeft;
  double marginRight;
  double marginBottom;

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: widget.marginLeft, top: widget.marginTop, bottom: widget.marginBottom, right: widget.marginRight),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              sharperColor(widget.color),
              widget.color
            ],
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              print(widget.redirectUrl);
              if (widget.redirectUrl != null) {
                launch(widget.redirectUrl!);
              }
            },
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 100),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        widget.title,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Container(
                        height: 10,
                      ),
                      Text(
                        widget.description,
                        style: TextStyle(color: widget.textColor),
                      ),
                    ],
                  ),
                )
            ),
          ),
        ),
      ),
    );
  }

  Color sharperColor(Color color) {
    final rng = new Random();
    const range = 40;
    return color
        .withRed(max(0, min(widget.color.red+(rng.nextInt(range)-range~/2), 255)))
        .withBlue(max(0, min(widget.color.blue+(rng.nextInt(range)-range~/2), 255)))
        .withGreen(max(0, min(widget.color.green+(rng.nextInt(range)-range~/2), 255)));
  }
}
