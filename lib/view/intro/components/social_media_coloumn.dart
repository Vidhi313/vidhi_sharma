import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SocialMediaIcon(icon: 'assets/icons/linkedin.svg',onTap: ()=>launchUrl(Uri.parse('https://www.linkedin.com/in/vidhi-sharma-03988a1a0'))),
        SizedBox(width: 20,),
        SocialMediaIcon(icon: 'assets/icons/github.svg',onTap: () => launchUrl(Uri.parse('https://github.com/Vidhi313')),),
        // SizedBox(width: 20,),
        // const SocialMediaIcon(icon: 'assets/icons/dribble.svg',),
        // SizedBox(width: 20,),
        // const SocialMediaIcon(icon: 'assets/icons/twitter.svg'),
      ],
    );
  }
}
