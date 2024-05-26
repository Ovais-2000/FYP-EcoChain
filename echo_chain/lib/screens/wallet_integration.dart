import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:fl_chart/fl_chart.dart';

class WalletIntegration extends StatefulWidget {
  const WalletIntegration({super.key});

  @override
  State<WalletIntegration> createState() => _WalletIntegrationState();
}

class _WalletIntegrationState extends State<WalletIntegration> {
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
                                text: 'Wallet',
                                style: TextStyle(color: Colors.green),
                              ),
                              TextSpan(
                                text: ' Integration',
                              ),
                            ],
                          ),
                        ),
                      ),
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
                          child: Image.asset(
                            "images/walletCard.png",
                            width: 320,
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
                                text: 'Market',
                                style: TextStyle(color: Colors.green),
                              ),
                              TextSpan(
                                text: ' Trend',
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Container(
                          width: 320,
                          height: 80,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: Offset(0,
                                      3), // Adjust the offset for drop shadow
                                ),
                              ]),
                          child: Row(
                            children: [
                              Image.asset(
                                "images/IconGreen.png",
                                width: 75,
                                height: 50,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Column(
                                  children: [
                                    Text(
                                      "\$5,440",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          fontFamily: "Poppins"),
                                    ),
                                    Text(
                                      "Income",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 16,
                                          fontFamily: "Poppins",
                                          color: Colors.grey.shade400),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Image.asset(
                                "images/IconBlack.png",
                                width: 75,
                                height: 50,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Column(
                                  children: [
                                    Text(
                                      "\$2,290",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          fontFamily: "Poppins"),
                                    ),
                                    Text(
                                      "Expense",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 16,
                                          fontFamily: "Poppins",
                                          color: Colors.grey.shade400),
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
                                text: 'Statistic',
                                style: TextStyle(color: Colors.green),
                              ),
                              TextSpan(
                                text: ' Overview',
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Nov 1, 2023 - Nov 30, 2023",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14,
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          //     i have to add dropdown here
                          Container(
                            height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    10.0), // Adjust the radius as needed
                                color: Colors.grey
                                    .shade200, // Adjust the background color as needed
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: 'Monthly',
                                  onChanged: (String? newValue) {
                                    // Handle the selection
                                  },
                                  items: <String>[
                                    'Weekly',
                                    'Monthly',
                                    'Yearly'
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: Text(value),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              )
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: Container(
                          width: 320,
                          height: 320,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: Offset(0,
                                      3), // Adjust the offset for drop shadow
                                ),
                              ]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30, bottom: 20, right: 10),
                            child: BarChart(
                              BarChartData(
                                alignment: BarChartAlignment.start,
                                maxY: 8,
                                titlesData: FlTitlesData(
                                  leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true, interval: 2)),
                                  bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true, interval: 4)),
                                  rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                  topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                ),
                                borderData: FlBorderData(
                                  show: true,
                                  border: Border.all(color: const Color(0xff37434d), width: 1),
                                ),
                                barGroups: [
                                  BarChartGroupData(
                                    x: 0,
                                    barRods: [],
                                  ),
                                  BarChartGroupData(
                                    x: 2,
                                    barRods: [
                                    BarChartRodData(
                                      toY: 5,
                                      color: Colors.black,
                                      width: 30,
                                     ),
                                    ],
                                  ),
                                  BarChartGroupData(
                                    x: 4,
                                    barRods: [
                                      BarChartRodData(
                                        toY: 8,
                                        color: Colors.green,
                                        width: 30,
                                      ),
                                    ],
                                  ),
                                  BarChartGroupData(
                                    x: 6,
                                    barRods: [
                                      BarChartRodData(
                                        toY: 3,
                                        color: Colors.black,
                                        width: 30,
                                      ),
                                    ],
                                  ),
                                  BarChartGroupData(
                                    x: 8,
                                    barRods: [
                                      BarChartRodData(
                                        toY: 7,
                                        color: Colors.green,
                                        width: 30,
                                      ),
                                    ],
                                  ), BarChartGroupData(
                                    x: 10,
                                    barRods: [
                                      BarChartRodData(
                                        toY: 6,
                                        color: Colors.black,
                                        width: 30,
                                      ),
                                    ],
                                  ), BarChartGroupData(
                                    x: 12,
                                    barRods: [
                                      BarChartRodData(
                                        toY: 4,
                                        color: Colors.green,
                                        width: 30,
                                      ),
                                    ],
                                  ),
                                ]

                              )
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,)
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
