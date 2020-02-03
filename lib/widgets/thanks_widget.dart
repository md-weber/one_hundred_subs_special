import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:one_hundred_subs_special/widgets/twitter_firework.dart';
import 'package:one_hundred_subs_special/widgets/youtube_firework.dart';

class ThanksWidget extends StatefulWidget {
  @override
  _ThanksWidgetState createState() => _ThanksWidgetState();
}

class _ThanksWidgetState extends State<ThanksWidget>
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

    startAnimationOfNumbers();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: YoutubeFirework(),
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
                  fontSize: 184.0,
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
          child: TwitterFirework(),
        )
      ],
    );
  }

  void startAnimationOfNumbers() {
    Future.delayed(Duration(seconds: 5)).then((value) {
      _animationController.forward();
    });
  }
}
