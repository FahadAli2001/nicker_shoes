 import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nicker_shoes/lib/src/controller/auth_controller/signup_controller.dart';
import 'package:nicker_shoes/lib/src/controller/home_controller/home_controller.dart';
import 'package:nicker_shoes/lib/src/controller/auth_controller/signin_controller.dart';
import 'package:nicker_shoes/lib/src/controller/profile_controller/profile_controller.dart';
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
        ChangeNotifierProvider(create: (_)=>SignUpController()),
        ChangeNotifierProvider(create: (_)=>SignInController()),
        ChangeNotifierProvider(create: (_)=>HomeController()),
        ChangeNotifierProvider(create: (_)=>ProfileController())
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
