//import 'package:componentes/src/pages/alert_page.dart';
//import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';

 void main() => runApp(MyApp());

 class MyApp extends StatelessWidget{
   @override
   Widget build(context){
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: 'Componentes App',
       //home: homePage(),
       routes: getApplicationRoutes(),
       onGenerateRoute: (settings){

         /*return MaterialPageRoute(
           builder: (context) => CardPage()
           );*/ //esto es por si hay problema con las rutas puedes controlar el error aqui

       },
     );
   }
 }