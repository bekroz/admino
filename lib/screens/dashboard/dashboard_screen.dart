import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:admin/constants.dart';
import 'package:admin/screens/dashboard/components/header.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<PieChartSectionData> pieChartSelectionDatas = [
                                  PieChartSectionData(
                                    color: primaryColor,
                                    value: 25,
                                    showTitle: false,
                                    radius: 25,
                                  ),
                                  PieChartSectionData(
                                    color: Color(0xFF26E5FF),
                                    value: 20,
                                    showTitle: false,
                                    radius: 25,
                                  ),
                                  PieChartSectionData(
                                    color: Color(0xFFFFCF26),
                                    value: 10,
                                    showTitle: false,
                                    radius: 25,
                                  ),
                                  PieChartSectionData(
                                    color: Color(0xFFEE2727),
                                    value: 15,
                                    showTitle: false,
                                    radius: 25,
                                  ),
                                  PieChartSectionData(
                                    color: primaryColor.withOpacity(0.1),
                                    value: 25,
                                    showTitle: false,
                                    radius: 25,
                                  ),
                                ];
    return SafeArea(
      child: SingleChildScrollView(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Header(),
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
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: const BorderRadius.all(Radius.circular((10))),
                      ),
                      child: Column(
                        children: [
                          Text("Storage Details", 
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 200,
                            child: PieChart(
                              PieChartData(
                                sections: pieChartSelectionDatas
                              )
                            )
                          )
                        ],
                      )
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}