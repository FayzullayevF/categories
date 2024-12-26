import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson103/utils/constants.dart';

import '../utils/constants.dart';

class RecentItem extends StatelessWidget {
  const RecentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 18),
              child:
              Text(
                "Recently Added",
                style: TextStyle(
                  color: AppColors.redPinkMain,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(14)
                    ),
                    child: Image(
                      image: AssetImage("assets/lemonade.png",),
                      width: 165,
                      height: 153,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: -60,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding:  EdgeInsets.all(12),
                      width: 165,
                      height: 76,
                      decoration:  BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(18),
                          bottomRight: Radius.circular(18),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Lemonade',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.backgound,
                            ),
                          ),
                          Text("Acidic and refreshing",
                            style: TextStyle(
                                color: Color(0xFF3E2823),
                                fontSize: 10
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("4",
                                style: TextStyle(
                                    color: AppColors.pinkSub,
                                    fontSize: 12
                                ),
                              ),
                              SizedBox(width: 3,),
                              SvgPicture.asset("assets/icons/yulduz.svg"),
                              SizedBox(width: 40,),
                              SvgPicture.asset("assets/icons/oclock.svg",
                                colorFilter: ColorFilter.mode(Color(0XFFEC888D), BlendMode.srcIn),
                              ),
                              SizedBox(width: 3,),
                              Text("30min",
                                style: TextStyle(
                                    color: Color(0XFFEC888D),
                                    fontSize: 10
                                ),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 18),

              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    child: Image(
                      image: AssetImage("assets/lemonade1.png",),
                      width: 165,
                      height: 153,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: -60,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding:  EdgeInsets.all(12),
                      width: 165,
                      height: 76,
                      decoration:  BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(18),
                          bottomRight: Radius.circular(18),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Lemonade',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.backgound,
                            ),
                          ),
                          Text("Acidic and refreshing",
                            style: TextStyle(
                                color: Color(0xFF3E2823),
                                fontSize: 10
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("4",
                                style: TextStyle(
                                    color: AppColors.pinkSub,
                                    fontSize: 12
                                ),
                              ),
                              SizedBox(width: 3,),
                              SvgPicture.asset("assets/icons/yulduz.svg"),
                              SizedBox(width: 40,),
                              SvgPicture.asset("assets/icons/oclock.svg",
                                colorFilter: ColorFilter.mode(Color(0XFFEC888D), BlendMode.srcIn),
                              ),
                              SizedBox(width: 3,),
                              Text("30min",
                                style: TextStyle(
                                    color: Color(0XFFEC888D),
                                    fontSize: 10
                                ),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}