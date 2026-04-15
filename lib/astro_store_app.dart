import 'package:astro_store/core/app/env_variable.dart';
import 'package:flutter/material.dart';

class AstroStoreApp extends StatelessWidget {
  const AstroStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
      title: 'Astro Store',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple,),),
      home: Scaffold(appBar: AppBar(title: const Text('Astro Store App',),),),
    );
  }
}
