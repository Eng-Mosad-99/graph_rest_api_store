import 'package:flutter/material.dart';

class AstroStoreApp extends StatelessWidget {
  const AstroStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Astro Store',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple,),),
      home: Scaffold(appBar: AppBar(title: Text('Astro Store App',),),),
    );
  }
}
