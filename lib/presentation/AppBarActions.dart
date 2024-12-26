import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson103/utils/constants.dart';

class Appactions extends StatelessWidget {
  const Appactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:30),
      child: Row(
        children: [
          Container(
              clipBehavior: Clip.none,
              height: 28,
              width: 28,
              margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: AppColors.bordercolor
                ),
                child: SvgPicture.asset("assets/icons/notification.svg")
            ),
          const SizedBox(width: 3,),
          Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: AppColors.bordercolor
            ),
            child: SvgPicture.asset("assets/icons/qidirish.svg"),
          )
        ],
      ),
    );
  }
}
