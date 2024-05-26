import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class PaymentSuccess extends StatefulWidget {
  const PaymentSuccess({super.key});

  @override
  State<PaymentSuccess> createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess> {
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
                  children: [
                    Image(image: AssetImage("images/success.png"),
                    width: 200,),
                    Text("Transfer Successful",
                      style: TextStyle(fontSize: 25, fontFamily: "Poppins"),),
                    Text("\$24,734.00", style: TextStyle(fontSize: 35, color: Colors.green, fontFamily: "Poppins"),),
                    SizedBox(height: 28,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text.rich(
                        TextSpan(
                          text: "The transfer, ",
                          style: TextStyle(fontSize: 15, fontFamily: "Poppins"),
                          children: [
                            TextSpan(
                              text: "Sunday 12 April 2022",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: " to ",
                            ),
                            TextSpan(
                              text: "Zaid Jaffar",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: " has been successful",
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 30,),
                    ElevatedButton(onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          minimumSize: Size(300, 50),
                          elevation: 10,
                          shadowColor: Colors.black,
                        ),
                        child: Text("Transaction Completed", style: TextStyle(fontFamily: "Poppins", fontSize: 20),)
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Do you want to make another transfer?", style: TextStyle(fontSize: 15, color: Colors.green, fontFamily: "Poppins"),
                        textAlign: TextAlign.center,
                      ),
                    )

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
