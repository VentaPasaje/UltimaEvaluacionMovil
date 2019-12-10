import 'package:flutter/material.dart';





class MenuVentas extends StatefulWidget {
  @override
  _MenuVentas createState() => new _MenuVentas();
}



class _MenuVentas extends State<MenuVentas> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Ventas"),
        backgroundColor: Colors.green[300],
      ),
      //drawer: new Drawer(),

      body:Principal() ,
    );
  }
}

class Principal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 25,
          child: bodyData(),
        )
      ],
    );
  }

}

Widget bodyData()=> DataTable(
   columns: <DataColumn>[
     DataColumn(
       label: Text("Fecha")
     ),
     DataColumn(
       label: Text("Tiempo")
     ),
     DataColumn(
       label: Text("Monto")
     ),
   ],
   rows: <DataRow>[
     DataRow(
       cells: <DataCell>[
         DataCell(Text("26/11/19")),
         DataCell(Text("00:20 hrs")),
         DataCell(Text("11.000")),
       ],
     ),
     DataRow(
       cells: <DataCell>[
         DataCell(Text("26/11/19")),
         DataCell(Text("01:35 hrs")),
         DataCell(Text("52.250")),
       ],
     ),
     DataRow(
       cells: <DataCell>[
         DataCell(Text("27/11/19")),
         DataCell(Text("00:33 hrs")),
         DataCell(Text("18.150")),
       ],
     ),
   ],
  );
