import 'package:flutter/material.dart';

class homePageTemp extends StatelessWidget{

  List _list = ['uno','dos','tres','cuatro','cinco'];

  @override
  Widget build(context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Componentes'),
      ),
      body: ListView(
        //children: listar(),
        children: listarCorto(),
      )
    );

    
  }

  List<Widget> listar(){
    List<Widget> lista = new List<Widget>();

      for(String op in _list){
      final escritura = ListTile(
        title: Text(op),
        ); 
      lista..add(escritura)
      ..add(Divider());
      }
    return lista;
  }

  List<Widget> listarCorto(){
    return _list.map((item){

      return Column(
        children: <Widget>[
          ListTile(
            //titulo del list
            title: Text(item + '!' ),
            //subtitulo
            subtitle: Text('Lol ya tu sabe'),
            //icono a la izquierda
            leading: Icon(Icons.access_time),
            //icono a la derecha
            trailing: Icon(Icons.account_box),
            //onclick
            onTap: (){},
          ),
          //divisor
          Divider()
        ],
      );

    }).toList();
  }



}