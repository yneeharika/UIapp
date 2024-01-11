import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_app/widgets/data.dart';

class WalletHeader extends StatelessWidget {
  const WalletHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Neeha's wallet",
            style:GoogleFonts.abel(fontSize: 40),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                boxShadow: customShadow,
                color: primaryColor,
                shape: BoxShape.circle),
            child: Stack(children: <Widget>[
              Center(
                child: Container(
                    decoration: BoxDecoration(
                        boxShadow: customShadow,
                        color: Colors.deepOrange,
                        shape: BoxShape.circle)),
              ),
              Center(
                child: Container(
                    margin: EdgeInsets.all(6),
                    child: Container(
                        decoration: BoxDecoration(
                            boxShadow: customShadow,
                            color: primaryColor,
                            shape: BoxShape.circle))),
              ),
              Center(child:Icon(Icons.notifications),)
            ]),
          )
        ],
      ),
    );
  }
}




           