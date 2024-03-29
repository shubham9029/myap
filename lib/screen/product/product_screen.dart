import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import 'package:myapp/utils/global.dart';

class productScreen extends StatefulWidget {
  const productScreen({super.key});

  @override
  State<productScreen> createState() => _productScreenState();
}

class _productScreenState extends State<productScreen> {
  @override
  Widget build(BuildContext context) {
    Map m1 = ModalRoute
        .of(context)!
        .settings
        .arguments as Map;
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage(
            "${m1['image']}",
          ),
            height: 350,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${m1['name']}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.black
                  ),
                ),
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "% On Sale",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.white,
                    ),
                  ),
                ),


              ],
            ),

          ),
          Padding(padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Container(
                  height: 45,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey,width: 2,)
                    ),
                  alignment: Alignment.center,
                  child: Text(
                    "⭐ 4.8",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 45,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey,width: 2,)
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "👍 94%",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "117 reviwes",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 10),
            child: Text(
              "Amazon.com is an e-commerce platform that sells many product lines, including media (books, movies, music, and software), apparel, baby products",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,

              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Container(
                  height: 35,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.green,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "1 TB",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black,width: 2)
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "256GB",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black,width: 2)
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "512GB",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: 450,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text(
                "₹ ${m1['price']}",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              SizedBox(width: 100,),
              FloatingActionButton.extended(onPressed: (){
                cartList.add(m1);
                Navigator.pop(context);
              },
                label: Text("Add to Cart"),
                icon: Icon(Icons.shopping_cart),
                backgroundColor: Colors.green,

              ),
            ],
          ),

        ],
      ),
    ));
  }
}
