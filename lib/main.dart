import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/views/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // we are using the getx so we have to change this materialapp into getmaterialapp
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
          ),
          fontFamily: regular,
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        // darkTheme: ThemeData(
        //   brightness: Brightness.dark,
        //   /* dark theme settings */
        // ),
        // themeMode: ThemeMode.dark,
        home: SplashScreen());
  }
}
