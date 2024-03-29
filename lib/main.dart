
import 'package:myapp/screen/cart/cart_screen.dart';
import 'package:myapp/screen/home/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:myapp/screen/product/product_screen.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>HomeScreen(),
        'product':(context)=>productScreen(),
        'cart':(context)=>CartScreen(),
      },
    ),
  );
}