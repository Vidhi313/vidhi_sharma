import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/model/education_model.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/education_controller.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../res/constants.dart';

class EducationStack extends StatelessWidget {
  final controller = Get.put(EducationController());
  EducationStack({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        controller.onHover(index, value);
      },
      onTap: () {
      },
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
          padding: const EdgeInsets.all(defaultPadding),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: bgColor),
          duration: const Duration(milliseconds: 500),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  educationList[index].name,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: defaultPadding,),
                Text(educationList[index].organization,style: const TextStyle(color: Colors.amber),),
                const SizedBox(height: defaultPadding/2,),
                Text(educationList[index].date,style: const TextStyle(color: Colors.grey,fontSize: 12),),
                 const SizedBox(height: defaultPadding/2,),
                Text.rich(
                  maxLines: 1,
                  TextSpan(
                      text: 'Education : ',style: const TextStyle(color: Colors.white,),
                      children: [
                        TextSpan(
                          text: educationList[index].percentage,style: const TextStyle(color: Colors.grey,overflow: TextOverflow.ellipsis),)
                      ]
                  ),),
                const SizedBox(height: defaultPadding,),
              ],
            ),
          )),
    );
  }
}