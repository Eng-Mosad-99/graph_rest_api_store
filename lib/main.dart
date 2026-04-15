import 'dart:io';

import 'package:astro_store/astro_store_app.dart';
import 'package:astro_store/core/app/env_variable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);
  
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: 'AIzaSyAGw2A3vSoJ9uZc5dgVqWpj821OupR9blc',
            appId: '1:328799846096:android:394b69bed1f9d2498f68d5',
            messagingSenderId: '328799846096',
            projectId: 'graph-rest-store',
          ),
        )
      : await Firebase.initializeApp();

  runApp(const AstroStoreApp());
}
