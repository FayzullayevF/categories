import 'package:flutter/material.dart';
import 'package:lesson103/utils/constants.dart';

class Chefs extends StatelessWidget {
  const Chefs({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Padding(
          padding: EdgeInsets.only(left: 18),
        child: Text("Top Chef",
        style: TextStyle(
          color: AppColors.redPinkMain,
          fontSize: 15,
        ),
        ),
      ),
        SizedBox(height: 10,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             ChefsItem(
                image: ("assets/joseph.png"),
                text: "Joseph"),
             ChefsItem(
                 image: "assets/andrew.png",
                 text: "Andrew"),
             ChefsItem(
                 image: "assets/emily.png",
                 text: "Emily"),
             ChefsItem(
                 image: "assets/jessica.png",
                 text: "Jessica")
           ],
         )
      ],
    );
  }
}

class ChefsItem extends StatelessWidget {
  const ChefsItem({super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(14),
              ),
              child: Image(
                  image: AssetImage(image),
                width: 83,
                height: 74,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                color: Color(0xffFFFDF9),
              ),
            )
              ],
            )
          ],
    );
  }
}
