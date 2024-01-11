import'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_app/widgets/cardselection.dart';
import 'package:ui_app/widgets/header.dart';
import 'package:ui_app/widgets/expenses.dart';

import 'data.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark, 
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark
    ));
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    extendBodyBehindAppBar: true,
      backgroundColor: primaryColor,
      body: Column(
          children:[
            SizedBox(height:20),
            Container(
              height:120,
              child:WalletHeader(),
            ),
            Expanded(child: CardSelection()),
            Expanded(child: ExpenseSection()),
          ],
        ),
      
    );
  }
}
