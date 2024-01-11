import 'package:flutter/material.dart';
import 'package:ui_app/widgets/data.dart';
import 'package:ui_app/widgets/carddetails.dart';

class CardSelection extends StatelessWidget {
  const CardSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.topLeft,
          child: Text(
            'Selected Card',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Container(
          height: 250,
          child: ListView.builder(
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                height: 40,
                decoration: BoxDecoration(
                  color: primaryColor,
                  boxShadow: customShadow,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      top:150,
                      bottom:-200,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: customShadow,
                          shape: BoxShape.circle,
                          color: Colors.white38
                        ),
                      ),
                    ),
                     Positioned.fill(
                      left: -300,
                      top:-100,
                      bottom:-100,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: customShadow,
                          shape: BoxShape.circle,
                          color: Colors.white38
                        ),
                      ),
                    ),
                    CardDetails()
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
