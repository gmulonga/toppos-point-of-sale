import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:toppos/Components/CustomButton.dart';
import 'package:toppos/Constants/Constants.dart';
import 'package:toppos/Screens/UsersPage.dart';

class PieChartSample extends StatelessWidget {
  final int totalCustomers;
  final int totalSuppliers;
  final int totalProducts;

  const PieChartSample({
    Key? key,
    required this.totalCustomers,
    required this.totalSuppliers,
    required this.totalProducts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int total = totalCustomers + totalProducts + totalSuppliers;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 150,
              width: 150,
              child: PieChart(
                PieChartData(
                  sections: showingSections(total),
                  borderData: FlBorderData(show: false),
                  sectionsSpace: 0,
                  centerSpaceRadius: 0,
                  pieTouchData: PieTouchData(
                      touchCallback: (FlTouchEvent event, pieTouchResponse) {}),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IndicatorBar(
                        value: totalCustomers / total,
                        color: Colors.redAccent,
                        title: 'Customers',
                      ),
                      const SizedBox(height: 2),
                      IndicatorBar(
                        value: totalSuppliers / total,
                        color: Colors.green,
                        title: 'Suppliers',
                      ),
                      const SizedBox(height: 2),
                      IndicatorBar(
                        value: totalProducts / total,
                        color: Colors.blue,
                        title: 'Products',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                CustomButton(
                    callBackFunction: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Userspage()),
                      );
                    },
                    label: 'Reports',
                    bgColor: kDarkYellow,
                    txtColor: kLightBlue)
              ],
            )
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections(int total) {
    return [
      PieChartSectionData(
        color: Colors.red,
        value: (totalCustomers / total) * 100,
        title: '',
        radius: 70,
      ),
      PieChartSectionData(
        color: Colors.green,
        value: (totalSuppliers / total) * 100,
        title: '',
        radius: 70,
      ),
      PieChartSectionData(
        color: Colors.blue,
        value: (totalProducts / total) * 100,
        title: '',
        radius: 70,
      ),
    ];
  }
}

class IndicatorBar extends StatelessWidget {
  final String title;
  final double value;
  final Color color;
  final double height;
  final BorderRadius borderRadius;

  const IndicatorBar({
    Key? key,
    required this.title,
    required this.value,
    required this.color,
    this.height = 10,
    this.borderRadius = const BorderRadius.all(Radius.circular(7.0)),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: height,
          width: 50,
          decoration: BoxDecoration(
            color: color,
            borderRadius: borderRadius,
          ),
        ),
        const SizedBox(width: 16),
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
