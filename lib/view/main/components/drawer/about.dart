// import 'package:flutter/material.dart';
// import 'package:flutter_portfolio/res/constants.dart';
// import 'package:flutter_portfolio/view%20model/responsive.dart';
// import 'package:flutter_portfolio/view/intro/components/social_media_coloumn.dart';
// import 'package:flutter_portfolio/view/main/components/drawer/knowledges.dart';
// import 'package:flutter_portfolio/view/main/components/drawer/my_skill.dart';
// import 'package:flutter_portfolio/view/main/components/drawer/personal_info.dart';
// import 'drawer_image.dart';

// class About extends StatelessWidget {
//   const About({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           Container(
//             color: bgColor,
//             child: Padding(
//               padding:
//                 const  EdgeInsets.only(top: 20, bottom: 20, left: 40, right: 40),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       const DrawerImage(),
//                       const SizedBox(width: 26),
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Vidhi Sharma',
//                               style: Theme.of(context).textTheme.titleSmall,
//                             ),
//                            const SizedBox(height: defaultPadding / 4),
//                             Text(
//                               'My expertise lies in various programming languages, Website and App development methodologies,${Responsive.isLargeMobile(context) ? '\n' : ''} and database management. ${!Responsive.isLargeMobile(context) ? '\n' : ''}I am proficient in Java,React, Flutter.',
//                               maxLines: 2,
//                               overflow: TextOverflow.ellipsis,
//                               style: const TextStyle(
//                                   color: Colors.grey,
//                                   wordSpacing: 2,
//                                   fontSize: 12),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                  const  SizedBox(height: 20),
//                  const  PersonalInfo(),
//                  const  MySKills(),
//                  const  Knowledges(),
//                  const  Divider(),
//                  SocialMediaIconColumn(),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/intro/components/social_media_coloumn.dart';
import 'package:flutter_portfolio/view/main/components/drawer/knowledges.dart';
import 'package:flutter_portfolio/view/main/components/drawer/my_skill.dart';
import 'package:flutter_portfolio/view/main/components/drawer/personal_info.dart';
import 'drawer_image.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    EdgeInsets responsivePadding = EdgeInsets.symmetric(
      horizontal: Responsive.isLargeMobile(context) ? 40 : 80,
      vertical: Responsive.isLargeMobile(context) ? 20 : 10,
    );

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: bgColor,
            child: Padding(
              padding: responsivePadding,
              child: Column(
                children: [
                  Row(
                    children: [
                      const DrawerImage(),
                      const SizedBox(width: 26),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Vidhi Sharma',
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            const SizedBox(height: defaultPadding / 4),
                            Text(
                              'My expertise lies in various programming languages, Website and App development methodologies,${Responsive.isLargeMobile(context) ? '\n' : ''} and database management. ${!Responsive.isLargeMobile(context) ? '\n' : ''}I am proficient in Java,React, Flutter.',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.grey,
                                wordSpacing: 2,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const PersonalInfo(),
                  const MySKills(),
                  const Knowledges(),
                  const Divider(),
                  SocialMediaIconColumn(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
