import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{

 int conteo = 10;

  TextStyle stilo = new TextStyle(fontSize: 25);

@override
Widget build(BuildContext context) {
  return Scaffold(

    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed:(){
        conteo++;
      }
      ),

    appBar: AppBar(
      centerTitle: true,
      title: Text('Titulo'),
      
    ),
   
    
 body: Center(
   child: Column( 
      mainAxisAlignment: MainAxisAlignment.center,
     children: <Widget>[
       
       Text('Cantidad de taps:', style: stilo),
       Text('$conteo', style: stilo)
       ],
       ),
       ),
  );



}

}