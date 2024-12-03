import 'package:flutter/material.dart';
import 'package:dashdoor/Models/food.dart';

class MyFoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const MyFoodTile({super.key,required this.food,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Expanded(child: Column(
              children: [
                Text(food.name),
                Text(food.price.toString()),
                Text(food.description),

              ],
            )),

            Image.asset(food.imagePath,height: 120,),

          ],
        ),
      )
    ],
    );
  }
}