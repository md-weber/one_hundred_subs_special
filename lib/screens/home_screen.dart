import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controls.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  IntTween tween = IntTween(begin: 0, end: 100);

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    tween.animate(_animationController)
      ..addListener(() {
        setState(() {
          print(tween.evaluate(_animationController).toString());
        });
      });

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var filename = "assets/animations/";
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlareActor(
                    "$filename/youtube-firework.flr",
                    animation: "explode",
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Thanks for ",
                        style: GoogleFonts.passionOne(fontSize: 42.0),
                      ),
                      Text(
                        tween.evaluate(_animationController).toString(),
                        style: GoogleFonts.passionOne(
                          fontSize: 124.0,
                        ),
                      ),
                      Text(
                        "Subscribers!",
                        style: GoogleFonts.passionOne(fontSize: 42.0),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: FlareActor(
                    "$filename/twitter_firework.flr",
                    animation: "explode",
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
