import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri Github_url = Uri.parse('https://github.com/Anas-Awni');
final Uri Linkedin_url =
    Uri.parse('https://www.linkedin.com/in/anas-alkhabbas-22a266211/');

Future<void> Github_Function() async {
  if (!await launchUrl(Github_url)) {
    throw 'Could not launch $Github_url';
  }
}

Future<void> Linkedin_Function() async {
  if (!await launchUrl(Linkedin_url)) {
    throw 'Could not launch $Linkedin_url';
  }
}

// ignore: must_be_immutable
class URLClass extends StatelessWidget {
  URLClass(
      {required this.myfunction,
      required this.myPlatformIcon,
      required this.myPlatformSubTitle,
      required this.myPlatformTitle});

  String? myPlatformTitle;
  String? myPlatformSubTitle;

  IconData? myPlatformIcon;

  Function()? myfunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myfunction,
      child: Column(children: [
        ListTile(
          title: Text("$myPlatformTitle"),
          subtitle: Text("$myPlatformSubTitle"),
          leading: Icon(myPlatformIcon),
        ),
      ]),
    );
  }
}
