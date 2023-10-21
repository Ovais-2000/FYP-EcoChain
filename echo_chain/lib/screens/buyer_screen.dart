import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:fl_chart/fl_chart.dart';

class BuyerScreen extends StatefulWidget {
  const BuyerScreen({super.key});

  @override
  State<BuyerScreen> createState() => _BuyerScreenState();
}

class _BuyerScreenState extends State<BuyerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff2E7D32), Colors.lightGreenAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(18),
                child: Row(
                  children: [
                    const Text(
                      "Switch to Selling",
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Poppins',
                          color: Colors.white),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SvgPicture.asset(
                      "images/switch.svg",
                      height: 9,
                      width: 9,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    SvgPicture.asset(
                      "images/account.svg",
                      height: 25,
                      width: 25,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                  child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)),
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(35),
                          child: Row(
                            children: [
                              Text.rich(TextSpan(
                                  text: 'Market',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.lightGreen,
                                      fontFamily: "Poppins"),
                                  children: <InlineSpan>[
                                    TextSpan(
                                      text: ' Trend',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                          fontFamily: "Poppins"),
                                    )
                                  ])),
                              SizedBox(
                                width: 105,
                              ),
                              Text(
                                "See All",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ],
                          ),
                        ),
                        // const SizedBox(height: 2,),
                        Container(
                            width: 300,
                            height: 250,
                            decoration: BoxDecoration(
                                color: Colors.lightGreen,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade500,
                                      offset: const Offset(4.0, 4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0),
                                  const BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(-4.0, -4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Stack(
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            width: 120,
                                            height: 120,
                                            color: Colors.transparent,
                                            child: const ProgressCircle(
                                              percentage: 65,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 35,
                                          ),
                                          const Text(
                                            "Current Load",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                      const SizedBox(width: 5),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: Column(
                                          children: [
                                            const Text(
                                              "Energy Sources",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                  color: Colors.white),
                                            ),
                                            const SizedBox(
                                              height: 12,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  width: 3,
                                                  height: 15,
                                                  color: Colors.green.shade800,
                                                ),
                                                const SizedBox(
                                                  width: 5
                                                ),
                                                const Text("Unit Produce",
                                                    style: TextStyle(
                                                        fontFamily: "Poppins",
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10,
                                                        color: Colors.white)),
                                                // Text("+2.8%", style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 13, color: Colors.white) ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 2,
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(left: 30),
                                              child: Row(
                                                children: [
                                                  Text("12,353",
                                                      style: TextStyle(
                                                          fontFamily: "Poppins",
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.white)),
                                                  SizedBox(
                                                    width: 15,
                                                  ),
                                                  Text("+2.8%",
                                                      style: TextStyle(
                                                          fontFamily: "Poppins",
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.white)),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  width: 3,
                                                  height: 15,
                                                  color: Colors.green.shade800,
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                const Text("Secondary Name",
                                                    style: TextStyle(
                                                        fontFamily: "Poppins",
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10,
                                                        color: Colors.white)),
                                                const SizedBox(
                                                  width: 20,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 2,
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(left: 2),
                                              child: Row(
                                                children: [
                                                  Text("12,353",
                                                      style: TextStyle(
                                                          fontFamily: "Poppins",
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.white)),
                                                  SizedBox(
                                                    width: 15,
                                                  ),
                                                  Text("+2.8%",
                                                      style: TextStyle(
                                                          fontFamily: "Poppins",
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                          color: Colors.white)),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(35),
                          child: Row(
                            children: [
                              Text.rich(TextSpan(
                                  text: 'Average',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.lightGreen,
                                      fontFamily: "Poppins"),
                                  children: <InlineSpan>[
                                    TextSpan(
                                      text: ' Unit Price',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                          fontFamily: "Poppins"),
                                    )
                                  ])),
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                "See All",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(25),
                          child: Row(
                            children: [
                              Container(
                                width: 140,
                                height: 140,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade500,
                                          offset: const Offset(4.0, 4.0),
                                          blurRadius: 15,
                                          spreadRadius: 1.0),
                                      const BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(-4.0, -4.0),
                                          blurRadius: 15,
                                          spreadRadius: 1.0),
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            "images/solar.svg",
                                            height: 25,
                                            width: 25,
                                          ),
                                          const SizedBox(
                                            width: 7,
                                          ),
                                          Column(
                                            children: [
                                              const Text(
                                                "Hybrid 10Kw",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: "Poppins",
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              // SizedBox(height: 5,),
                                              const Text(
                                                "\$ 60.00",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: "Poppins",
                                                    color: Colors.green),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              SvgPicture.asset(
                                                "images/mountain.svg",
                                                height: 25,
                                                width: 25,
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              const Text(
                                                "Details",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: "Poppins",
                                                    color: Colors.green,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 140,
                                height: 140,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade500,
                                          offset: const Offset(4.0, 4.0),
                                          blurRadius: 15,
                                          spreadRadius: 1.0),
                                      const BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(-4.0, -4.0),
                                          blurRadius: 15,
                                          spreadRadius: 1.0),
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            "images/solar.svg",
                                            height: 25,
                                            width: 25,
                                          ),
                                          const SizedBox(
                                            width: 7,
                                          ),
                                          Column(
                                            children: [
                                              const Text(
                                                "Hybrid 10Kw",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: "Poppins",
                                                    fontWeight:
                                                    FontWeight.bold),
                                              ),
                                              // SizedBox(height: 5,),
                                              const Text(
                                                "\$ 60.00",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: "Poppins",
                                                    color: Colors.green),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              SvgPicture.asset(
                                                "images/mountain.svg",
                                                height: 25,
                                                width: 25,
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              const Text(
                                                "Details",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: "Poppins",
                                                    color: Colors.green,
                                                    fontWeight:
                                                    FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(35),
                          child: Row(
                            children: [
                              Text.rich(TextSpan(
                                  text: 'Successful',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.lightGreen,
                                      fontFamily: "Poppins"),
                                  children: <InlineSpan>[
                                    TextSpan(
                                      text: ' Trades',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                          fontFamily: "Poppins"),
                                    )
                                  ])),
                              SizedBox(
                                width: 55,
                              ),
                              Text(
                                "See All",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30),
                          child: Row(
                            children: [
                              Container(
                                width: 87,
                                height: 170,
                                decoration: BoxDecoration(
                                    color: Colors.lightGreen,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade500,
                                          offset: const Offset(4.0, 4.0),
                                          blurRadius: 15,
                                          spreadRadius: 1.0),
                                      const BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(-4.0, -4.0),
                                          blurRadius: 15,
                                          spreadRadius: 1.0),
                                    ]),
                                child: Column(
                                  children: [
                                    const Image(
                                      image:
                                          AssetImage('images/splashWhite.png'),
                                      height: 80,
                                      width: 80,
                                    ),
                                    const Text(
                                      "12,353",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SvgPicture.asset(
                                      "images/mountain.svg",
                                      height: 35,
                                      width: 35,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                // child: Image(image: AssetImage('images/splashWhite.png',),),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 200,
                                height: 170,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade500,
                                          offset: const Offset(4.0, 4.0),
                                          blurRadius: 15,
                                          spreadRadius: 1.0),
                                      const BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(-4.0, -4.0),
                                          blurRadius: 15,
                                          spreadRadius: 1.0),
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 3,
                                            height: 15,
                                            color: Colors.green,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text("Successful Trade 01",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13,
                                                  color: Colors.black)),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Row(
                                          children: [
                                            Text("12,353",
                                                style: TextStyle(
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12,
                                                    color: Colors.black)),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 40),
                                              child: Text("+2.8%",
                                                  style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12,
                                                      color: Colors.green)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 5,),
                                      Row(
                                        children: [
                                          Container(
                                            width: 3,
                                            height: 15,
                                            color: Colors.blue.shade800,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text("Successful Trade 02",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13,
                                                  color: Colors.black)),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Row(
                                          children: [
                                            const Text("12,353",
                                                style: TextStyle(
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12,
                                                    color: Colors.black)),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 40),
                                              child: Text("+2.8%",
                                                  style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12,
                                                      color: Colors
                                                          .blue.shade800)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 5,),
                                      Row(
                                        children: [
                                          Container(
                                            width: 3,
                                            height: 15,
                                            color: Colors.yellow.shade700,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text("Successful Trade 03",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13,
                                                  color: Colors.black)),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Row(
                                          children: [
                                            const Text("12,353",
                                                style: TextStyle(
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12,
                                                    color: Colors.black)),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 40),
                                              child: Text("+2.8%",
                                                  style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12,
                                                      color: Colors
                                                          .yellow.shade700)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(35),
                          child: Row(
                            children: [
                              Text.rich(TextSpan(
                                  text: 'Emission',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.lightGreen,
                                      fontFamily: "Poppins"),
                                  children: <InlineSpan>[
                                    TextSpan(
                                      text: ' Saved',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                          fontFamily: "Poppins"),
                                    )
                                  ])),
                              SizedBox(
                                width: 85,
                              ),
                              Text(
                                "See All",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 300,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade500,
                                    offset: const Offset(4.0, 4.0),
                                    blurRadius: 15,
                                    spreadRadius: 1.0),
                                const BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-4.0, -4.0),
                                    blurRadius: 15,
                                    spreadRadius: 1.0),
                              ]),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          "Carbon Emission Saved",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 90,
                                        ),
                                        Text(
                                          "35%",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width: 250,
                                      height: 4,
                                      child: LinearProgressIndicator(
                                        value: 0.5,
                                        backgroundColor: Colors.white,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                Colors.blue.shade800),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      "Compared To Last Year",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade500),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 300,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade500,
                                    offset: const Offset(4.0, 4.0),
                                    blurRadius: 15,
                                    spreadRadius: 1.0),
                                const BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-4.0, -4.0),
                                    blurRadius: 15,
                                    spreadRadius: 1.0),
                              ]),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          "Want to Install",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 147,
                                        ),
                                        Text(
                                          "61%",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const SizedBox(
                                      width: 250,
                                      height: 4,
                                      child: LinearProgressIndicator(
                                        value: 0.7,
                                        backgroundColor: Colors.white,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                Colors.yellow),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      "Compared To Last Year",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade500),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 300,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade500,
                                    offset: const Offset(4.0, 4.0),
                                    blurRadius: 15,
                                    spreadRadius: 1.0),
                                const BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-4.0, -4.0),
                                    blurRadius: 15,
                                    spreadRadius: 1.0),
                              ]),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          "Unsatisfied Customer",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 100,
                                        ),
                                        Text(
                                          "0.5%",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const SizedBox(
                                      width: 250,
                                      height: 4,
                                      child: LinearProgressIndicator(
                                        value: 0.2,
                                        backgroundColor: Colors.white,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                Colors.red),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      "Compared To Last Year",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade500),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(35.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text.rich(TextSpan(
                                text: 'Add',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.lightGreen,
                                    fontFamily: "Poppins"),
                                children: <InlineSpan>[
                                  TextSpan(
                                    text: ' Transaction',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        fontFamily: "Poppins"),
                                  )
                                ])),
                          ),
                        ),
                        // SizedBox(height: 15,),
                        Container(
                          width: 300,
                          height: 65,
                          decoration: BoxDecoration(
                              color: Colors.lightGreen,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade500,
                                    offset: const Offset(4.0, 4.0),
                                    blurRadius: 15,
                                    spreadRadius: 1.0),
                                const BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-4.0, -4.0),
                                    blurRadius: 15,
                                    spreadRadius: 1.0),
                              ]),
                          child: const Center(
                            child: Text(
                              " \$ Add Transaction >>",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(35),
                          child: Row(
                            children: [
                              Text.rich(TextSpan(
                                  text: 'Account',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.lightGreen,
                                      fontFamily: "Poppins"),
                                  children: <InlineSpan>[
                                    TextSpan(
                                      text: ' Details',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                          fontFamily: "Poppins"),
                                    )
                                  ])),
                              SizedBox(
                                width: 80,
                              ),
                              Text(
                                "See All",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 300,
                          height: 250,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade500,
                                    offset: const Offset(4.0, 4.0),
                                    blurRadius: 15,
                                    spreadRadius: 1.0),
                                const BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-4.0, -4.0),
                                    blurRadius: 15,
                                    spreadRadius: 1.0),
                              ]),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 13),
                                child: Row(
                                  children: [
                                    Text(
                                      "Unit Sale",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade800),
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    Text(
                                      "Unit Price",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade800),
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    Text(
                                      "Post Sale",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade800),
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    Text(
                                      "Maintenance",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade800),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      "17,614.11",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: "Poppins",
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 17,
                                    ),
                                    Text(
                                      "87,614.11",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: "Poppins",
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 17,
                                    ),
                                    Text(
                                      "53,614.11",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: "Poppins",
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 17,
                                    ),
                                    Text(
                                      "95,614.11",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: "Poppins",
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 5),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  color: Colors.lightGreen,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50)),
                                            ),
                                            const SizedBox(
                                              width: 25,
                                            ),
                                            const Text(
                                              "Unit Sale",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: "Poppins",
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  color: Colors.blue.shade800,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50)),
                                            ),
                                            const SizedBox(
                                              width: 25,
                                            ),
                                            const Text(
                                              "Unit Sale",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: "Poppins",
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 18),
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                    color: Colors.yellow,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            const Text(
                                              "Maintenance",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: "Poppins",
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50)),
                                            ),
                                            const SizedBox(
                                              width: 25,
                                            ),
                                            const Text(
                                              "Post Sale",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: "Poppins",
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 100,
                                      height: 100,
                                      child: PieChart(PieChartData(sections: [
                                        PieChartSectionData(
                                          color: Colors.blue,
                                          value: 35,
                                          title: '35%',
                                          titleStyle: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        PieChartSectionData(
                                          color: Colors.red,
                                          value: 30,
                                          title: '30%',
                                          titleStyle: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        PieChartSectionData(
                                          color: Colors.yellow,
                                          value: 25,
                                          title: '25%',
                                          titleStyle: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        PieChartSectionData(
                                          color: Colors.green,
                                          value: 20,
                                          title: '20%',
                                          titleStyle: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ])),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(35),
                          child: Row(
                            children: [
                              Text(
                                "Location",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Poppins",
                                  color: Colors.lightGreen,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 155,
                              ),
                              Text(
                                "See All",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 300,
                          height: 250,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade500,
                                    offset: const Offset(4.0, 4.0),
                                    blurRadius: 15,
                                    spreadRadius: 1.0),
                                const BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-4.0, -4.0),
                                    blurRadius: 15,
                                    spreadRadius: 1.0),
                              ]),
                        ),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                  ),
                ),
              ))
            ],
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          child: Container(
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
      ),
    );
  }
}

class ProgressCircle extends StatelessWidget {
  final double percentage;

  const ProgressCircle({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(200, 100), // Adjust the size as needed
      painter: CirclePainter(percentage),
      child: const Padding(
        padding: EdgeInsets.only(top: 45),
        child: Column(
          children: [
            Text(
              '897928.41%',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              "Kw",
              style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  final double percentage;

  CirclePainter(this.percentage);

  @override
  void paint(Canvas canvas, Size size) {
    // Draw the background circle
    final backgroundPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;
    canvas.drawCircle(
        size.center(const Offset(0, 0)), size.width / 2, backgroundPaint);

    // Draw the progress circle
    final progressPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10.0;

    const startAngle = -3 * pi / 2;

    final progressPath = Path();
    progressPath.arcTo(
      Rect.fromCircle(
          center: size.center(const Offset(0, 0)), radius: size.width / 2),
      startAngle,
      2 * pi * (percentage / 100),
      false,
    );
    canvas.drawPath(progressPath, progressPaint);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    return percentage != oldDelegate.percentage;
  }
}
