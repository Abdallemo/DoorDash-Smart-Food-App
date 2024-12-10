import 'package:dashdoor/Models/cart_item.dart';
import 'package:dashdoor/Models/resturent.dart';
import 'package:dashdoor/components/my_quantity_selector.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Resturent>(
        builder: (context, resturent, child) => Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(8)
          ),
              child: Column(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            cartItem.food.imagePath,
                            height: 100,
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text('RM' + cartItem.food.name),
                          Text(cartItem.food.price.toString()),
                        ],
                      ),
                      QuantitySelector(
                          food: cartItem.food,
                          onIncrement: () {
                            resturent.addToCart(
                                cartItem.food, cartItem.selectedAddons);
                          },
                          onDecrement: () {
                            resturent.removeFromCart(cartItem);
                          },
                          quantity: cartItem.quantity)
                    ],
                  )
                ],
              ),
            ));
  }
}
