import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_extensionapp_1/config/colorPalette.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'component/Header.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Header(),
          SizedBox(height: defaultPadding),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  height: 500,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: defaultPadding),
              Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(defaultPadding),
                    height: 500,
                    decoration: const BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        Text(
                          "Details",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 200,
                          child: Stack(
                            children: [
                              PieChart(
                                PieChartData(
                                  sectionsSpace: 5,
                                  startDegreeOffset: -90,
                                  centerSpaceRadius: 10,
                                  sections: pieChartSelectionData,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    ));
  }
}

List<PieChartSectionData> pieChartSelectionData = [
  PieChartSectionData(
    color: primaryColor,
    value: 25,
    showTitle: false,
    radius: 70,
  ),
  PieChartSectionData(
    color: Color(0xFF26E5FF),
    value: 20,
    showTitle: false,
    radius: 72,
  ),
  PieChartSectionData(
    color: Color(0xFFFFCF26),
    value: 10,
    showTitle: false,
    radius: 69,
  ),
  PieChartSectionData(
    color: Color(0xFFEE2727),
    value: 15,
    showTitle: false,
    radius: 67,
  ),
  PieChartSectionData(
    color: primaryColor.withOpacity(0.1),
    value: 25,
    showTitle: false,
    radius: 74,
  ),
];
