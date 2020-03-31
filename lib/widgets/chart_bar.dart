import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final double spendingAmount;
  final double spendingRatioOfTotal;
  final String label;

  ChartBar(this.spendingAmount, this.spendingRatioOfTotal, this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height:20,
            child: FittedBox(
              child: Text('\$' + spendingAmount.toStringAsFixed(0)),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            height: 60,
            width: 10,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.0),
                    color: Color.fromRGBO(220, 220, 200, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                FractionallySizedBox(
                  heightFactor: spendingRatioOfTotal,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(label),
        ],
      ),
    );
  }
}
