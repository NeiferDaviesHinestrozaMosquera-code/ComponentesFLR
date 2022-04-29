


import 'package:flutter/material.dart';

class Themess {

static const Color primary = Colors.indigoAccent;
static const Color second = Colors.orange;
static const Color tree = Colors.greenAccent;

static final ThemeData lightTheme = ThemeData.light().copyWith(
        ///COLOR PRIMARIO
        primaryColor: Colors.indigo,
       ///PRUEBA LETRA
       
        ///APPBAR THEME
        ///
        appBarTheme: const AppBarTheme(
          color: primary,
          centerTitle: true,
          elevation: 0,
        ),
        ///COLOR DE LOS TEXTBUTTON PARA TODOo EL DOCUMENTO
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: Colors.orange),
        ),

        //////FLOATINGACTIONBUTTONNS
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary
          
        ),

        ///////ELEVATEDBITTONS
        elevatedButtonTheme: ElevatedButtonThemeData( style: ElevatedButton.styleFrom(
               primary: Colors.indigo , 
             shape: const StadiumBorder() , 
             elevation: 0),
         ),

        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(
            color: primary
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: primary //////SOLO COLOR CUANDO TODAVIA NO SE ACTIVA
            ),
           borderRadius: BorderRadius.only(
             bottomLeft: Radius.circular(10) ,  //////////SE USA PARA REDONDEAR EL TEXTO BOX
             topRight: Radius.circular(10) //////////SE USA PARA REDONDEAR EL TEXTO BOX
             ) ,
          ),

           focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: second //////SOLO COLOR CUANDO SE ACTIVA
            ),
           borderRadius: BorderRadius.only(
             bottomLeft: Radius.circular(10) ,  //////////SE USA PARA REDONDEAR EL TEXTO BOX
             topRight: Radius.circular(10) //////////SE USA PARA REDONDEAR EL TEXTO BOX
             ) ,
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
             bottomLeft: Radius.circular(10) ,  //////////SE USA PARA REDONDEAR EL TEXTO BOX
             topRight: Radius.circular(10) //////////SE USA PARA REDONDEAR EL TEXTO BOX
             ) ,
          ),
        )

      );


static final ThemeData darkTheme = ThemeData.dark().copyWith(
        ///COLOR PRIMARIO
        primaryColor: Colors.indigo,
       
        ///APPBAR THEME
        ///
        appBarTheme: const AppBarTheme(
          color: primary,
          centerTitle: true,
          elevation: 0,
        ),

      scaffoldBackgroundColor: Colors.black

      );


}