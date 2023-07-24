
import 'package:flutter/material.dart';
import 'package:stroe_app/pages/home_page.dart';
void main() {
  runApp(const StroeApp ());
}

class StroeApp extends StatelessWidget {
  const StroeApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     routes: {
       HomePage.id: (context)=>const HomePage(),
     },
      
      
     initialRoute: HomePage.id,
    );
  }
}
