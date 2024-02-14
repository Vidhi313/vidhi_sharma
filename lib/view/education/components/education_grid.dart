import 'package:flutter/material.dart';
import 'package:flutter_portfolio/model/education_model.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/education_controller.dart';
import 'package:get/get.dart';
import '../../../res/constants.dart';
import 'education_details.dart';
class  EducationGrid extends StatelessWidget {
  final int crossAxisCount;
  final double ratio;
  EducationGrid({super.key, this.crossAxisCount = 1,  this.ratio=1.3});
  final controller = Get.put(EducationController());
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      itemCount: educationList.length,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount, childAspectRatio: ratio),
      itemBuilder: (context, index) {
        return Obx(() => AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            margin: const EdgeInsets.symmetric(
                vertical: defaultPadding, horizontal: defaultPadding),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(colors: [
                  Colors.pinkAccent,
                  Colors.blue,
                ]),
                boxShadow:  [
                  BoxShadow(
                    color: Colors.pink,
                    offset: const Offset(-2, 0),
                    blurRadius: controller.hovers[index] ? 20 : 10,
                  ),
                  BoxShadow(
                    color: Colors.blue,
                    offset: const Offset(2, 0),
                    blurRadius: controller.hovers[index] ? 20 : 10,),
                ]),
            child: EducationStack(index: index)
        ));
      },
    );
  }
}