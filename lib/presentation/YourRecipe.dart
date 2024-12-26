import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson103/presentation/HeartIcon.dart';
import '../../utils/constants.dart';

class MyRecipe extends StatelessWidget {
  const MyRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 255,
      decoration: BoxDecoration(
        color: AppColors.redPinkMain,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 18, top: 10),
            child: Text(
              "Your Recipes",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      child: Image(
                        image: AssetImage("assets/chicken_new.png"),
                        width: 169,
                        height: 162,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const HeartIcon(),
                    Positioned(
                      bottom: -25,
                      left: 0,
                      child: Container(
                        width: 169,
                        height: 49,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(14),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Chicken Burger',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.backgound,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Row(
                                children: [
                                  const Text(
                                    "5",
                                    style: TextStyle(color: AppColors.pinkSub, fontSize: 12),
                                  ),
                                  const SizedBox(width: 3),
                                  SvgPicture.asset(
                                    "assets/icons/yulduz.svg",
                                    width: 10,
                                    height: 10,
                                  ),
                                  const SizedBox(width: 30),
                                  SvgPicture.asset(
                                    "assets/icons/oclock.svg",
                                    width: 10,
                                    height: 10,
                                  ),
                                  const SizedBox(width: 4),
                                  const Text(
                                    '15min',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.pinkSub,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      child: Image(
                        image: AssetImage("assets/trimasu.png"),
                        width: 169,
                        height: 162,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const HeartIcon(),
                    Positioned(
                      bottom: -25,
                      left: 0,
                      child: Container(
                        width: 169,
                        height: 49,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(14),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Tiramisu',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.backgound,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Row(
                                children: [
                                  const Text(
                                    "5",
                                    style: TextStyle(color: AppColors.pinkSub, fontSize: 12),
                                  ),
                                  const SizedBox(width: 3),
                                  SvgPicture.asset(
                                    "assets/icons/yulduz.svg",
                                    width: 10,
                                    height: 10,
                                  ),
                                  const SizedBox(width: 30),
                                  SvgPicture.asset(
                                    "assets/icons/oclock.svg",
                                    width: 10,
                                    height: 10,
                                  ),
                                  const SizedBox(width: 4),
                                  const Text(
                                    '15min',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.pinkSub,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}