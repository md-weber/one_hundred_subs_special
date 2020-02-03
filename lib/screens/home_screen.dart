import 'package:flutter/material.dart';
import 'package:one_hundred_subs_special/widgets/thanks_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ThanksWidget()),
    );
  }
}
