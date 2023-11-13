import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nicker_shoes/lib/src/views/splashScreen/splash_screen.dart';
 import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nickers',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
