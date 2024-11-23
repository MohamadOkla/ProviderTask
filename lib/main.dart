import 'package:flutter/material.dart';
import 'package:prov/controller_screen.dart';
import 'package:prov/home_page_screen.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
      create: (BuildContext context) { 
        return ControllerProvider();
       },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
      
        home: HomePageScreen(),
      ),
    );
  }
}
