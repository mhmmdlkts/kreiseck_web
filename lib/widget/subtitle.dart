import 'package:flutter/material.dart';

class Subtitle extends StatefulWidget {
  Subtitle({Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _SubtitleState createState() => _SubtitleState();
}

class _SubtitleState extends State<Subtitle> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 100, bottom: 30),
      child: Text(widget.title, style: Theme.of(context).textTheme.headline4,),
    );
  }
}
