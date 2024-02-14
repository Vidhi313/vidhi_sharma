import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/education_controller.dart';
import 'package:flutter_portfolio/view/education/components/education_grid.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';
import 'package:get/get.dart';
import '../../res/constants.dart';
import '../../view model/responsive.dart';


class Education extends StatelessWidget {
  final controller=Get.put(EducationController());
   Education({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(Responsive.isLargeMobile(context))const SizedBox(
            height: defaultPadding,
          ),
          const TitleText(prefix: 'Education ', title: ''),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Responsive(
                  desktop: EducationGrid(crossAxisCount: 2,ratio: 1.5,),
                  extraLargeScreen: EducationGrid(crossAxisCount: 3,ratio: 1.6),
                  largeMobile:EducationGrid(crossAxisCount: 1,ratio: 1.8),
                  mobile: EducationGrid(crossAxisCount: 1,ratio: 1.4),
                  tablet: EducationGrid(ratio: 1.7,crossAxisCount: 2,)))
        ],
      ),
    );
  }
}










