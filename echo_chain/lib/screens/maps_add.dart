import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class MapsAdd extends StatefulWidget {
  const MapsAdd({super.key});

  @override
  State<MapsAdd> createState() => _MapsAddState();
}

class _MapsAddState extends State<MapsAdd> {
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
              child: SingleChildScrollView(
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
                        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                        child: Text("Location", style: TextStyle(fontSize: 20, color: Colors.green, fontFamily: "Poppins" ),),
                      ),
                      Center(
                        child: Container(
                          width: 320,
                          height: 300,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3), // Shadow color
                                spreadRadius: 5, // How much the shadow should spread
                                blurRadius: 10, // How blurry the shadow should be
                                offset: Offset(0, 3), // Offset of the shadow
                              ),
                            ],
                          ),
                          child: Image.asset("images/maps.png"),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                          Container(
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3), // Shadow color
                                spreadRadius: 4, // How much the shadow should spread
                                blurRadius: 8, // How blurry the shadow should be
                                offset: Offset(0, 3), // Offset of the shadow
                              ),
                             ]
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("images/icon box.png"),
                                Text("-----------------------------", style: TextStyle(fontFamily: "Poppins"),),
                                Image.asset("images/info.png"),
                              ],
                            ),
                           ),
                          SizedBox(height: 30,),Container(
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3), // Shadow color
                                spreadRadius: 4, // How much the shadow should spread
                                blurRadius: 8, // How blurry the shadow should be
                                offset: Offset(0, 3), // Offset of the shadow
                              ),
                             ]
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("images/icon box.png"),
                                Text("-----------------------------", style: TextStyle(fontFamily: "Poppins"),),
                                Image.asset("images/info.png"),
                              ],
                            ),
                           ),
                          SizedBox(height: 30,),Container(
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3), // Shadow color
                                spreadRadius: 4, // How much the shadow should spread
                                blurRadius: 8, // How blurry the shadow should be
                                offset: Offset(0, 3), // Offset of the shadow
                              ),
                             ]
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("images/icon box.png"),
                                Text("-----------------------------", style: TextStyle(fontFamily: "Poppins"),),
                                Image.asset("images/info.png"),
                              ],
                            ),
                           ),
                          SizedBox(height: 30,),Container(
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3), // Shadow color
                                spreadRadius: 4, // How much the shadow should spread
                                blurRadius: 8, // How blurry the shadow should be
                                offset: Offset(0, 3), // Offset of the shadow
                              ),
                             ]
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("images/icon box.png"),
                                Text("-----------------------------", style: TextStyle(fontFamily: "Poppins"),),
                                Image.asset("images/info.png"),
                              ],
                            ),
                           ),
                          SizedBox(height: 30,),Container(
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3), // Shadow color
                                spreadRadius: 4, // How much the shadow should spread
                                blurRadius: 8, // How blurry the shadow should be
                                offset: Offset(0, 3), // Offset of the shadow
                              ),
                             ]
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("images/icon box.png"),
                                Text("-----------------------------", style: TextStyle(fontFamily: "Poppins"),),
                                Image.asset("images/info.png"),
                              ],
                            ),
                           ),
                          SizedBox(height: 30,),Container(
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3), // Shadow color
                                spreadRadius: 4, // How much the shadow should spread
                                blurRadius: 8, // How blurry the shadow should be
                                offset: Offset(0, 3), // Offset of the shadow
                              ),
                             ]
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("images/icon box.png"),
                                Text("-----------------------------", style: TextStyle(fontFamily: "Poppins"),),
                                Image.asset("images/info.png"),
                              ],
                            ),
                           ),
                          SizedBox(height: 30,),Container(
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3), // Shadow color
                                spreadRadius: 4, // How much the shadow should spread
                                blurRadius: 8, // How blurry the shadow should be
                                offset: Offset(0, 3), // Offset of the shadow
                              ),
                             ]
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("images/icon box.png"),
                                Text("-----------------------------", style: TextStyle(fontFamily: "Poppins"),),
                                Image.asset("images/info.png"),
                              ],
                            ),
                           ),
                          SizedBox(height: 30,),

                          ],
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
