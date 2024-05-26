import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 60),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(65),  // Adjust the radius as needed
                      topRight: Radius.circular(65),
                    ),
                    color: Colors.white,
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
                      Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                            child: Text("W A L L E T", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Poppins", fontSize: 25),),
                          )),
                      Center(
                        child: Container(
                          width: 320,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 7,
                                blurRadius: 9,
                                offset: Offset(
                                    0, 1), // Adjust the offset for drop shadow
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "images/metamaskWallet.png",
                              width: 320,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                color: Colors.black),
                            children: [
                              TextSpan(
                                text: 'Set',
                                style: TextStyle(color: Colors.green),
                              ),
                              TextSpan(
                                text: ' Amount',
                              ),
                            ],
                          ),
                        ),
                      ),
                      Center(child: Text("How much would you like to top up?", style: TextStyle(fontFamily: "Poppins", fontSize: 16, color: Colors.grey.shade400),)),
                      SizedBox(
                        height: 20,
                      ),
                      Center(child: Text("\$130.00", style: TextStyle(fontFamily: "Poppins", fontSize: 30, fontWeight: FontWeight.bold),)),
                      SizedBox(height: 30 ,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: Offset(0, 3), // Adjust the offset for the shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                              child: Text("\$100.00", style: TextStyle(fontFamily: "Poppins", fontSize: 15, color: Colors.white),),
                            ),
                          ),Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: Offset(0, 3), // Adjust the offset for the shadow
                                ),
                              ],

                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                              child: Text("\$250.00", style: TextStyle(fontFamily: "Poppins", fontSize: 15, color: Colors.white),),
                            ),
                          ),Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: Offset(0, 3), // Adjust the offset for the shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                              child: Text("\$500.00", style: TextStyle(fontFamily: "Poppins", fontSize: 15, color: Colors.white),),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50,),
                      Center(
                        child: ElevatedButton(onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              minimumSize: Size(300, 50),
                              elevation: 5,
                              shadowColor: Colors.black,
                            ),
                            child: Text("Submit", style: TextStyle(fontFamily: "Poppins", fontSize: 20),)
                        ),
                      ),
                      SizedBox(height: 10,),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Do you want to make another transfer?", style: TextStyle(fontSize: 15, color: Colors.grey.shade400, fontFamily: "Poppins"),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),

                    ],
                  ),
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
