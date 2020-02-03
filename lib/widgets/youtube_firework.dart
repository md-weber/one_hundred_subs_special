import 'package:flutter/material.dart';
import 'package:one_hundred_subs_special/consts.dart';
import 'package:one_hundred_subs_special/widgets/link_to_channel_widget.dart';
import 'package:rive/rive.dart';

class YoutubeFirework extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Rive(
            filename: "$folderName/youtube-firework.flr",
            animation: "explode",
          ),
        ),
        Expanded(
          flex: 1,
          child: LinkToChannelWidget(
            urlLink: "https://www.youtube.com/channel/UCgUnLn1FpuHHmO66vn4o1NA",
            linkText: "MyracleDesign #FlutterExplained",
          ),
        )
      ],
    );
  }
}
