import 'package:flutter/material.dart';
import 'package:kreiseck_web/widget/main_widget.dart';
import 'package:kreiseck_web/widget/subtitle.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kreiseck',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
      ),
      home: MyHomePage(title: 'Kreiseck'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                MainWidget(title: "Kreiseck", description: "Kreative und Problemlösende Software entwicklungen.", color: Colors.red),

                Subtitle(title: "Our Projects"),
                Row(
                  children: [
                    Expanded(
                      child: MainWidget(title: "Post Now", description: "asdas", redirectUrl: "https://postnow.at/", color: Color.fromARGB(255, 41, 171, 226),),
                    ),
                  ],
                ),
                Subtitle(title: "References"),
                Row(
                  children: [
                    Expanded(
                      child: MainWidget(title: "Novogenia", description: "asdas", color: Color.fromARGB(255, 222, 221, 0), marginRight: 5,),
                    ),
                    Expanded(
                      child: MainWidget(title: "Redbull", description: "asdas", color: Color.fromARGB(255, 255, 204, 0), marginLeft: 5,),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: MainWidget(title: "Spar", description: "asdas", color: Color.fromARGB(255, 12, 122, 62), marginRight: 5,),
                    ),
                    Expanded(
                      child: MainWidget(title: "Raiffeisen", description: "asdas", color: Color.fromARGB(255, 251, 243, 21), marginLeft: 5,),
                    )
                  ],
                ),
                Subtitle(title: "Cooperations"),
                Row(
                  children: [
                    Expanded(
                      child: MainWidget(title: "Talsen Team", description: "asdas", redirectUrl: "https://talsen.team/", color: Color.fromARGB(255, 21, 103, 152), marginRight: 5,),
                    ),
                    Expanded(
                      child: MainWidget(title: "Chrona", description: "asdas", redirectUrl: "https://chrona.com/", color: Colors.grey, marginLeft: 5,),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            color: Colors.black26,
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("© 2021 Kreiseck. Alle Rechte vorbehalten."),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text("Impressum"),
                    ),
                    Container(width: 10, height: 0,),
                    InkWell(
                      onTap: () {},
                      child: Text("Privacy Policy"),
                    ),
                    Container(width: 10, height: 0,),
                    InkWell(
                      onTap: () {},
                      child: Text("Terms of Use"),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
