import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BuyingEnergy extends StatefulWidget {
  const BuyingEnergy({super.key});

  @override
  State<BuyingEnergy> createState() => _BuyingEnergyState();
}

class _BuyingEnergyState extends State<BuyingEnergy> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff2E7D32), Colors.lightGreenAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 60),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(65),
                    topRight: Radius.circular(65),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 30.0,
                      spreadRadius: 2.0,
                      offset: Offset(
                        5.0,
                        5.0,
                      ),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 30),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'Seller',
                              style: TextStyle(color: Colors.green),
                            ),
                            TextSpan(
                              text: ' Details',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10.0,
                                spreadRadius: 1.0,
                                offset: Offset(
                                  1.0,
                                  1.0,
                                ),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.account_box_sharp,
                                  size: 30,
                                  color: Colors.black,),
                                SizedBox(height: 20,),
                                Text("CREDIBILTY", style: TextStyle(fontSize: 14, fontFamily: "Poppins", fontWeight: FontWeight.w400),),
                                Text("1000+", style: TextStyle(fontSize: 18, fontFamily: "Poppins", fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10.0,
                                spreadRadius: 1.0,
                                offset: Offset(
                                  1.0,
                                  1.0,
                                ),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.energy_savings_leaf_outlined,
                                size: 30,
                                    color: Colors.black,),
                                SizedBox(height: 20,),
                                Text("ENERGY PRICE", style: TextStyle(fontSize: 14, fontFamily: "Poppins", fontWeight: FontWeight.w400),),
                                Text("8.97K", style: TextStyle(fontSize: 18, fontFamily: "Poppins", fontWeight: FontWeight.bold),),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10.0,
                                spreadRadius: 1.0,
                                offset: Offset(
                                  1.0,
                                  1.0,
                                ),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.ad_units_outlined,
                                  size: 30,
                                  color: Colors.black,),
                                SizedBox(height: 20,),
                                Text("UNIT SALES", style: TextStyle(fontSize: 14, fontFamily: "Poppins", fontWeight: FontWeight.w400),),
                                Text("165K", style: TextStyle(fontSize: 18, fontFamily: "Poppins", fontWeight: FontWeight.bold),),

                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10.0,
                                spreadRadius: 1.0,
                                offset: Offset(
                                  1.0,
                                  1.0,
                                ),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.trip_origin_outlined,
                                  size: 30,
                                  color: Colors.black,),
                                SizedBox(height: 20,),
                                Text("ORIGIN", style: TextStyle(fontSize: 14, fontFamily: "Poppins", fontWeight: FontWeight.w400),),
                                Text("SOLAR", style: TextStyle(fontSize: 18, fontFamily: "Poppins", fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            minimumSize: Size(225, 50),
                            elevation: 10,
                            shadowColor: Colors.black,
                          ),
                          child: Text(
                            "Add Transaction",
                            style:
                                TextStyle(fontFamily: "Poppins", fontSize: 16),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            minimumSize: Size(225, 50),
                            elevation: 10,
                            shadowColor: Colors.black,
                          ),
                          child: Text(
                            "Negotiate Price",
                            style:
                                TextStyle(fontFamily: "Poppins", fontSize: 16),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.grey.shade300,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            child: GNav(
              backgroundColor: Colors.grey.shade300,
              color: Colors.black,
              activeColor: Colors.black,
              tabBackgroundColor: Colors.white,
              gap: 6,
              padding: const EdgeInsets.all(8.0),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.notifications,
                  text: 'Notifications',
                ),
                GButton(
                  icon: Icons.favorite,
                  text: 'Likes',
                ),
                GButton(
                  icon: Icons.email,
                  text: 'Messages',
                ),
                GButton(
                  icon: Icons.account_circle,
                  text: 'User',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
