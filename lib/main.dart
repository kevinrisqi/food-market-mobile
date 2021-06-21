import 'package:flutter/material.dart';
import 'package:food_market/models/models.dart';
import 'layout/pages/pages.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentPage(
        transaction:
            Transaction(food: mockFoods[0], user: mockUser, quantity: 2),
      ),
    );
  }
}
