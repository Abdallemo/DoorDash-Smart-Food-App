import 'package:dashdoor/Models/food.dart';
import 'package:flutter/material.dart';

class CartItem {
  Food food;
  List<Addon> selectedAddons;
  int quantity;

  CartItem(
      {required this.food,
      this.quantity = 1,
      required this.selectedAddons
      });
      double get totalPrice{
        double addonPrice = selectedAddons.fold(0, (sum,addon)=>sum+addon.price);
        return (food.price+addonPrice)*quantity;
      } 
}