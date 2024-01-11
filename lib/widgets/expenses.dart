import 'package:flutter/material.dart';
import 'package:ui_app/widgets/data.dart';
import 'package:ui_app/widgets/piechart.dart';



class ExpenseSection extends StatelessWidget {
  const ExpenseSection({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text('Expenses', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: 10), // Adjust the height as needed
        Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: expenses.map((value) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3), // Adjust the vertical padding as needed
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: pieColors[expenses.indexOf(value)],
                        ),
                        SizedBox(width: 5),
                        Text(value['name'], style: TextStyle(fontSize: 18),)
                      ],
                    ),
                  )).toList(),
                ),
              ),
            ),
            Expanded(child: PieChart(),flex:6)
          ],
        ),
      ],
    );
  }
}
