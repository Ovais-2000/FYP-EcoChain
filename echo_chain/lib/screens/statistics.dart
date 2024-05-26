import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Statistics extends StatefulWidget {
  const Statistics({super.key});

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  int selectedTextIndex = 0;

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
                                text: 'Charts',
                                style: TextStyle(color: Colors.green),
                              ),
                              TextSpan(
                                text: ' Statistics',
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 1, horizontal: 20),
                        child: Container(
                          width: double.infinity,
                          height: 55,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedTextIndex = 0;
                                  });
                                },
                                child: selectedTextIndex == 0
                                    ? Container(
                                        width: 150,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                              spreadRadius: 1,
                                              blurRadius: 2,
                                              offset: Offset(0, 2),
                                            ),
                                          ],
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "Energy Saving",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                      )
                                    : Text(
                                        'Energy Saving',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedTextIndex = 1;
                                  });
                                },
                                child: selectedTextIndex == 1
                                    ? Container(
                                        width: 150,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                              spreadRadius: 1,
                                              blurRadius: 2,
                                              offset: Offset(0, 2),
                                            ),
                                          ],
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Expense',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                      )
                                    : const Text(
                                        'Expense',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
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
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, bottom: 10, right: 5),
                            child: BarChart(BarChartData(
                                alignment: BarChartAlignment.start,
                                maxY: 8,
                                titlesData: FlTitlesData(
                                  leftTitles: AxisTitles(
                                      sideTitles: SideTitles(
                                          showTitles: true, interval: 2)),
                                  bottomTitles: AxisTitles(
                                      sideTitles: SideTitles(
                                          showTitles: true, interval: 4)),
                                  rightTitles: AxisTitles(
                                      sideTitles:
                                          SideTitles(showTitles: false)),
                                  topTitles: AxisTitles(
                                      sideTitles:
                                          SideTitles(showTitles: false)),
                                ),
                                borderData: FlBorderData(
                                  show: true,
                                  border: Border.all(
                                      color: const Color(0xff37434d), width: 1),
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
                                        color: Colors.lightGreen,
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                  BarChartGroupData(
                                    x: 4,
                                    barRods: [
                                      BarChartRodData(
                                        toY: 6,
                                        color: Colors.yellow,
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                  BarChartGroupData(
                                    x: 6,
                                    barRods: [
                                      BarChartRodData(
                                        toY: 4,
                                        color: Colors.black,
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                  BarChartGroupData(
                                    x: 8,
                                    barRods: [
                                      BarChartRodData(
                                        toY: 7,
                                        color: Colors.lightGreen,
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                  BarChartGroupData(
                                    x: 10,
                                    barRods: [
                                      BarChartRodData(
                                        toY: 6,
                                        color: Colors.yellow,
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                  BarChartGroupData(
                                    x: 12,
                                    barRods: [
                                      BarChartRodData(
                                        toY: 4,
                                        color: Colors.black,
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                  BarChartGroupData(
                                    x: 14,
                                    barRods: [
                                      BarChartRodData(
                                        toY: 2,
                                        color: Colors.lightGreen,
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                  BarChartGroupData(
                                    x: 16,
                                    barRods: [
                                      BarChartRodData(
                                        toY: 5,
                                        color: Colors.yellow,
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                ])),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
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
                                offset: Offset(
                                    0, 3), // Adjust the offset for drop shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 10, right: 10),
                            child: LineChart(
                              LineChartData(
                                gridData: FlGridData(
                                  show: true,
                                  horizontalInterval: 1,
                                  verticalInterval: 1,
                                  drawHorizontalLine: true,
                                  drawVerticalLine: true,
                                ),
                                titlesData: FlTitlesData(
                                  leftTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: true,
                                      interval: 1,
                                      reservedSize: 30,
                                    ),
                                  ),
                                  topTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: false,
                                    ),
                                  ),
                                  rightTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: false,
                                    ),
                                  ),
                                  bottomTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: true,
                                      interval: 2,
                                      reservedSize: 30,
                                    ),
                                  ),
                                ),
                                borderData: FlBorderData(
                                  show: true,
                                  border: Border.all(
                                      color: Colors.grey.shade300, width: 1),
                                ),
                                lineBarsData: [
                                  LineChartBarData(
                                    spots: [
                                      FlSpot(0, 2),
                                      FlSpot(2, 4),
                                      FlSpot(4, 5),
                                      FlSpot(6, 1),
                                      FlSpot(8, 4),
                                      FlSpot(10, 2),
                                    ],
                                    isCurved: true,
                                    color: Colors.yellow,
                                    dotData: FlDotData(show: false),
                                    belowBarData: BarAreaData(show: false),
                                  ),
                                  LineChartBarData(
                                    spots: [
                                      FlSpot(0, 4),
                                      FlSpot(2, 1),
                                      FlSpot(4, 4),
                                      FlSpot(6, 2),
                                      FlSpot(8, 6),
                                      FlSpot(10, 4),
                                    ],
                                    isCurved: true,
                                    color: Colors.lightGreen,
                                    dotData: FlDotData(show: false),
                                    belowBarData: BarAreaData(show: false),
                                  ),
                                  LineChartBarData(
                                    spots: [
                                      FlSpot(0, 1),
                                      FlSpot(2, 3),
                                      FlSpot(4, 3),
                                      FlSpot(6, 4),
                                      FlSpot(8, 1),
                                      FlSpot(10, 5),
                                    ],
                                    isCurved: true,
                                    color: Colors.black,
                                    dotData: FlDotData(show: false),
                                    belowBarData: BarAreaData(show: false),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      )
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
