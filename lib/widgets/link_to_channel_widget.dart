import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkToChannelWidget extends StatelessWidget {
  final String urlLink;
  final String linkText;

  const LinkToChannelWidget({Key key, this.urlLink, this.linkText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            linkText,
            style:
                GoogleFonts.passionOne(color: Colors.lightBlue, fontSize: 20.0),
          ),
        ),
        onTap: () async {
          if (await canLaunch(urlLink)) {
            await launch(urlLink);
          } else {
            throw 'Could not launch $urlLink';
          }
        },
      ),
    );
  }
}
