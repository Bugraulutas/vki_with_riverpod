import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:vki_riverpod/vki_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() {
  runApp(const ProviderScope(child:  MyApp()));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

  
        primarySwatch: Colors.blue,

      ),
      home:AnimatedSplashScreen(

          duration: 1300,
          splash: Icon(Icons.accessibility,color: Colors.white,size: 95,),
          nextScreen: VkiApp(),
          splashTransition: SplashTransition.fadeTransition,

          backgroundColor: Colors.deepPurpleAccent),
    );
  }
}




