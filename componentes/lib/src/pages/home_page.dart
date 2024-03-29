import 'package:componentes/src/providers/menu_providers.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Componentes'),
      ),
      body: _lista(),
          );
        }
      
        Widget _lista() {
          
         /* menuProvider.cargarData().then((opciones){

            print('_lista');
            print(opciones);
          
          });*/

          return FutureBuilder(
            future: menuProvider.cargarData(),
            initialData: [],
            builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){

              print(snapshot.data);

             return ListView(
            children: _listaItems(snapshot.data, context),
          );
            },
          );

                    }

                
            
 List<Widget> _listaItems(List<dynamic>data, BuildContext context) {

   final List<Widget>opciones = [];

   

   data.forEach((opt){

     final widgetTemp = ListTile(
       title: Text(opt['texto']),
       leading: getIcon(opt['icon']),
       trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
       onTap: (){


         
         Navigator.pushNamed(context, opt['ruta']);

       },
     );

     opciones..add(widgetTemp)
     ..add(Divider());
   });

   return opciones;
  }
}