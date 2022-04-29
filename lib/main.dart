import 'package:flutter/material.dart';
import 'package:fluttercomponentes/router/app_routes.dart';
import 'package:fluttercomponentes/theme/themess.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: Listview2Screen(),
      initialRoute: AppRoutes.initialRoute, /// PANTALLA PRINCIPAL -- ESTA INFORMACION ESTA EN LA CARPETA ROUTE
      routes: AppRoutes.getAppRoutes(), ///-- ESTA INFORMACION ESTA EN LA CARPETA ROUTE
      onGenerateRoute: AppRoutes.onGenerateRoute, ///-- ESTA INFORMACION ESTA EN LA CARPETA ROUTE
      theme: Themess.lightTheme,
    );
  }
}