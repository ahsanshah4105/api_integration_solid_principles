import 'package:api_intergration_demo/modules/connectivity/views/ConnectivityScreen.dart';
import 'package:api_intergration_demo/modules/countries/binding/countryBinding.dart';
import 'package:api_intergration_demo/modules/countries/views/country_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'modules/connectivity/bindings/ConnectivityBinding.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      // initialRoute: AppRoutes.connectivityScreen,
      // getPages: AppPages.pages,
      initialBinding: CountryBinding(),
      home: CountryScreen(),
      theme: new ThemeData(
        //primaryColor:
      ),
    );
  }
}
