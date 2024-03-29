import 'package:flutter/material.dart';
import 'package:myapp/utils/global.dart';
class HomeScreen extends StatefulWidget
{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>
{
  bool ismobile=true;
  bool islaptop=true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Discover",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),

          ),
          actions: [
            InkWell(
                onTap: () => Navigator.pushNamed(context, 'cart'),
                child:
            Icon(Icons.shopping_bag,color: Colors.black,size: 30,)
            ),
          ],
          ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 370,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade200,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "search",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                            ),
                            Icon(Icons.search,color: Colors.black,)
                          ],
                        ),
                      ),

                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                      height: 200,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: AssetImage("assets/image/flipkart.jpeg"),
                        fit: BoxFit.fill
                      ),
                    ),
                  ),
                ),
                 SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Categoris",
                      style: TextStyle(
                        fontSize: 20,
                         color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("See all",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            islaptop=true;
                            ismobile=true;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 45,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15)
                          ),
                              child: Text(
                                "All",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                      ),


                      Row(
                        children: List.generate(productList.length, (index) =>  Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 10),
                          height: 45,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.black,width: 2),
                           ),
                          child: Text(
                            "${productList[index]['name']}",
                            style: TextStyle(
                               color: Colors.black,
                               fontWeight: FontWeight.bold,
                              fontSize: 20,
                             ),
                           ),
                        )),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(mobilelist.length, (index) =>InkWell(
                      onTap: () {
                        setState(() {
                            Map m1=mobilelist[index];
                            Navigator.pushNamed(context, 'product',arguments: m1);
                        });

                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              height: 170,
                              width: 180,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius:BorderRadius.circular(20),
                                  image: DecorationImage(
                                  image: AssetImage(
                                    "${mobilelist[index]['image']}"
                                  )
                                )
                              ),
                            ),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.only(left: 5),
                                ),
                                Text(
                                    " ${mobilelist[index]['name']}",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),

                                ),
                                Padding(padding: EdgeInsets.only(left: 5),
                                ),
                                SizedBox(width: 35,),
                                Icon(Icons.star,color: Colors.amber,),
                                Text(
                                  " ${mobilelist[index]['rate']}",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ],

                            ),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.only(left: 5),),
                                Text(
                                  "${mobilelist[index]['price']}",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),

                                ),

                              ],
                            )

                          ],
                        ),
                      ),
                    ) ),
                  ),
                ),
                SizedBox(height: 10,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(laptoplist.length, (index) =>InkWell(
                      onTap: () {
                        setState(() {
                          Map m1 = laptoplist[index];
                            Navigator.pushNamed(context, 'product',arguments:m1 );
                        });

                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              height: 170,
                              width: 180,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius:BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "${laptoplist[index]['image']}"
                                      )
                                  )
                              ),
                            ),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.only(left: 5),
                                ),
                                Text(
                                  " ${mobilelist[index]['name']}",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),

                                ),
                                Padding(padding: EdgeInsets.only(left: 5),
                                ),
                                SizedBox(width: 35,),
                                Icon(Icons.star,color: Colors.amber,),
                                Text(
                                  " ${mobilelist[index]['rate']}",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ],

                            ),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.only(left: 5),),
                                Text(
                                  "${mobilelist[index]['price']}",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),

                                ),

                              ],
                            )

                          ],
                        ),
                      ),
                    ) ),
                  ),
                ),

              ],
            ),
          ),
        ),

                ),

            );
  }
}