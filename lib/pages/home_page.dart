import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  final String id = "home_page";

  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> Image_list = [
    'assets/images/item_1.jpeg',
    'assets/images/item_2.jpeg',
    'assets/images/item_3.jpeg',
    'assets/images/item_4.jpeg',
    'assets/images/item_5.jpeg',
    'assets/images/item_6.jpeg',
    'assets/images/item_7.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        backgroundColor: Color(0xFF0D8198),
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100.0,
              child: Image.asset("assets/images/amazon_logo.png",
                  fit: BoxFit.cover),
            ),
            Row(
              children: [
                Icon(Icons.mic),
                SizedBox(width: 15.0),
                Icon(Icons.shopping_cart),
                SizedBox(width: 10.0),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          // @search panel
          Container(
            height: 55.0,
            width: double.infinity,
            color: Color(0xFF0D8198),
            child: Container(
              height: 55.0,
              width: double.infinity,
              margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(color: Colors.grey[400]!, width: 1.0),
                  color: Colors.white),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(Icons.search, color: Color(0xFF0D8198)),
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                            hintText: 'What are you looking for?'),
                      ),
                    ),
                  ),
                  Icon(Icons.camera_alt, color: Color(0xFF0D8198))
                ],
              ),
            ),
          ),
          // @Body
          Expanded(
            child: ListView(
              children: [
                // @location panel
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    height: 40.0,
                    width: double.infinity,
                    color: Color(0xFF607C8A),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on, color: Colors.white),
                        SizedBox(width: 5.0),
                        Text(
                          "Deliver to Uzbekistan, Republic of",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )),

                // ad = reklama panel
                Container(
                  height: (MediaQuery.of(context).size.height / 6) - 7,
                  width: double.infinity,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(
                                        (MediaQuery.of(context).size.height /
                                                6.5) /
                                            2),
                                    bottomRight: Radius.circular(
                                        (MediaQuery.of(context).size.height /
                                                6.5) /
                                            2)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/image_1.jpeg'),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Text(
                              "We ship 45 million products",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 7.0),

                // @Sign in panel
                Container(
                  height: MediaQuery.of(context).size.height / 5.5,
                  padding: EdgeInsets.all(15.0),
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign in for the best experience',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 18.0),
                      ),
                      Container(
                        height: 50.0,
                        width: double.infinity,
                        color: Colors.orange,
                        child: Center(
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18.0),
                          ),
                        ),
                      ),
                      Text(
                        'Create an account',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.blue,
                            fontSize: 18.0),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 7.0),

                // @products = deal of the day
                Container(
                  padding: EdgeInsets.all(15.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Deal of the Day",
                        style: TextStyle(fontSize: 25.0),
                      ),
                      SizedBox(height: 10.0),
                      Image(
                        height: 220.0,
                        width: double.infinity,
                        image: AssetImage('assets/images/item_7.jpeg'),
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Up to 31% off APC UPC Battery Back",
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 7.0),
                      Text(
                        "\$10.99 - \$79.9",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 7.0),

                // Best panel
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(15.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Best sellers in Electronics",
                        style: TextStyle(
                          fontSize: 22.0,
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Expanded(
                        child: Row(
                          children: [
                            squerImageBuilder(Image_list[6]),
                            SizedBox(width: 5.0),
                            squerImageBuilder(Image_list[4])
                          ],
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Expanded(
                        child: Row(
                          children: [
                            squerImageBuilder(Image_list[5]),
                            SizedBox(width: 5.0),
                            squerImageBuilder(Image_list[3])
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 7.0),

                // camera panel
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(15.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Top products in Camera",
                        style: TextStyle(
                          fontSize: 22.0,
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Expanded(
                        child: Row(
                          children: [
                            squerImageBuilder(Image_list[6]),
                          ],
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Expanded(
                        child: Row(
                          children: [
                            squerImageBuilder(Image_list[2]),
                            SizedBox(width: 5.0),
                            squerImageBuilder(Image_list[1]),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(),
    );
  }

  // image container panel items
  Widget squerImageBuilder(String image) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      ),
    );
  }
}
