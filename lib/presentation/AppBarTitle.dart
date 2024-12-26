import 'package:flutter/material.dart';
import 'package:lesson103/utils/constants.dart';


class AppbarTitle extends StatelessWidget {
  const AppbarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Text(
              "Hi! Fatxullo",
            style: TextStyle(
              color: AppColors.redPinkMain,
              fontSize: 25,
              fontFamily: "Poppins"
            ),
            ),
          ),
          SizedBox(height: 3,),
          Text(
            "What are you cookig today",
          style: TextStyle(
            color: Colors.white,
            fontSize: 13
          ),
          )
        ],
      ),
    );
  }
}
