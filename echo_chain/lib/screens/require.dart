import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Require extends StatefulWidget {
  const Require({super.key});

  @override
  State<Require> createState() => _RequireState();
}

class _RequireState extends State<Require> {
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
                    SizedBox(height: 50,),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter Unit Sells',
                            border: OutlineInputBorder(), // Creates an outlined border
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter Price/Unit',
                            border: OutlineInputBorder(), // Creates an outlined border
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter Negotiation Cost',
                            border: OutlineInputBorder(), // Creates an outlined border
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter Amount',
                            border: OutlineInputBorder(), // Creates an outlined border
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
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
                        child: Text("Do you want to make another transfer?", style: TextStyle(fontSize: 15, color: Colors.green, fontFamily: "Poppins"),
                          textAlign: TextAlign.center,
                        ),
                      ),
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
