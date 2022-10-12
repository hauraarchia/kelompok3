import 'package:flutter/material.dart';

class SocialMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItemIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only( top: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              color: Color.fromARGB(255, 227, 244, 252),
              child:   Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16),
               child: Image.asset('assets/logo1.png',
                width: 50,
                ),
              ),
              Text("My Canteen",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(
                width: 97,
              ),
               Icon(
                Icons.add_shopping_cart,
                size: 27,
              ),
              Padding(
                padding: EdgeInsets.only(left: 13),
               child: Icon(
                Icons.chat_outlined,
                size: 27,
              ),
              ),
               Padding(
                padding: EdgeInsets.only(left: 13),
               child: Icon(
                Icons.logout_outlined,
                size: 27,
              ),
              ),
            ],
          ) ,
            ),
           Container(
            height: 40,
            child: Row(
              children: [
                IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        Padding(
          padding: EdgeInsets.only(top: 5),
        child: Image.asset('assets/food.png',
        height: 60,
        ),
        ),
        Padding(
        padding:EdgeInsets.only(left: 7,top: 4),
        child: Text('Makanan',
        style: TextStyle(
          fontSize: 28,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        ), 
        ),
              ],
            ),
           ),
            Container(
              margin: EdgeInsets.only(top: 8, bottom: 12),
              height: 42,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildStoryAvatar(
                      "Termurah","assets/money.png"),
                  buildStoryAvatar(
                      "Favorite","assets/touch.png"),
                  buildStoryAvatar(
                     "Sehat","assets/salad.png"),
                  buildStoryAvatar(
                      "Terlaris","assets/premium.png"),
                  buildStoryAvatar(
                      "Promo","assets/discount.png"),
                ],
              ),
            ),
            Container(
              height: 2,
              color: Colors.grey[300],
              margin: EdgeInsets.symmetric(horizontal: 30),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(top: 8),
                children: [
                  buildPostSection(
                      "assets/bakso.jpg","Bakso urat pak war","Rp.10000.00"),
                  buildPostSection(
                      "assets/lontongb.jpg","Lontong balap asi","Rp.5000.00"),
                  buildPostSection(
                      "assets/nasig.jpg","Nasi goreng Darto","Rp.8000.00"),
                       buildPostSection(
                      "assets/nasig.jpg","Nasi goreng Darto","Rp.8000.00"),
                       buildPostSection(
                      "assets/nasig.jpg","Nasi goreng Darto","Rp.8000.00"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8, bottom: 12),
              height: 220,
              padding: EdgeInsets.only(left: 10),
              child: Column(
                // scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 255),
                    child:  Text('Best Seller',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                  ),
                  ),
                   Container(
                    color: Colors.black,
              margin: EdgeInsets.only(top: 8, bottom: 12),
              height: 170,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    color: Colors.blue,
                    child: Image.asset('assets/gambarnv1.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/gambarnv2.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/gambarnv3.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/gambarnv4.jpg'),
                  )
                ],
              ),
            ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
   Container buildPostSection(String assets, String labelText, String labelText1) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 120,
            width: 120,
            child:  Image.asset(assets)),
            SizedBox(
              width: 20,
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                   Container(
                    padding: EdgeInsets.only(left: 1),
            child:  Text(
            labelText,
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          ),
                 Container(
              height: 1,
              width: 200,
              color: Colors.black,
            ),
            Text(labelText1,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 198, 76, 67),
            ),
            ),
            Container(
              child: Row(
                children: [
                  Icon(Icons.star),
                   Icon(Icons.star),
                    Icon(Icons.star),
                     Icon(Icons.star),
                      Icon(Icons.star),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Icon(Icons.chat_outlined,
                  size: 30,),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                Icons.add_shopping_cart,
                size: 30,
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(color: Color.fromARGB(255, 195, 183, 10),
                  width: 2,
                  ),
                ),
                child: Text(
                  "Beli Sekarang",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: Color.fromARGB(255, 195, 183, 10)),
                ),
              ) ,
                ],
              ),
            )
                ],
              ),
            ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
  
  // Container buildPostSection(String urlProfilePhoto) {
  //   return Container(
  //     margin: EdgeInsets.only(bottom: 8),
  //     padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
  //     decoration: BoxDecoration(
  //       color: Colors.grey,
  //     ),
  //     child: Row(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         SizedBox(
  //           height: 10,
  //         ),
  //         SizedBox(
  //           height: 5,
  //         ),
  //         Container(
  //           height: 120,
  //           width: 120,
  //           child:  Image.network(urlProfilePhoto),
  //         ),
  //         Text(
  //           "963 likes",
  //           style: TextStyle(
  //               fontSize: 17,
  //               fontWeight: FontWeight.bold,
  //               color: Colors.grey[800]),
  //         ),
  //         SizedBox(
  //           height: 8,
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Row buildPostFirstRow(String urlProfilePhoto) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [
  //       Row(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           SizedBox(
  //             width: 5,
  //           ),
  //           Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text(
  //                 "Tom Smith",
  //                 style: TextStyle(
  //                   fontSize: 18,
  //                   fontWeight: FontWeight.bold,
  //                 ),
  //               ),
  //               Text(
  //                 "Iceland",
  //                 style: TextStyle(
  //                     fontSize: 12,
  //                     fontWeight: FontWeight.bold,
  //                     color: Colors.grey[500]),
  //               ),
  //             ],
  //           )
  //         ],
  //       ),
  //       Icon(Icons.more_vert)
  //     ],
  //   );
  // }

  // Stack buildPostPicture(String urlPost) {
  //   return Stack(
  //     children: [
  //       Container(
  //         height: MediaQuery.of(context).size.width - 70,
  //         decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(30),
  //             boxShadow: [
  //               BoxShadow(
  //                 color: Colors.white.withOpacity(0.3),
  //                 spreadRadius: 2,
  //                 blurRadius: 20,
  //                 offset: Offset(0, 10),
  //               ),
  //             ],
  //             image: DecorationImage(
  //               fit: BoxFit.cover,
  //               image: NetworkImage(urlPost),
  //             )),
  //       ),
  //       Positioned(
  //         bottom: 20,
  //         right: 20,
  //         child: Icon(Icons.favorite,
  //             size: 35, color: Colors.white.withOpacity(0.7)),
  //       )
  //     ],
  //   );
  // }

  Container buildStoryAvatar(String labelText, String assets) {
    return Container(
      margin: EdgeInsets.only(left: 18),
       height: 41,
       width: 125,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.red),
          child:Row(
            children: [
               Stack(
            children: [
            Container(
              margin: EdgeInsets.only(left: 3, right: 2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white
              ),
              child: Image.asset(assets),
            )
          ]),
          Text(labelText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
          )
            ],
          )
    );
  }
}