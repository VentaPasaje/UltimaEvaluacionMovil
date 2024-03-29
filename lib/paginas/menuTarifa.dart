import 'package:flutter/material.dart';

class MenuTarifa extends StatefulWidget {
  @override
  _MenuTarifa createState() => new _MenuTarifa();
}

class _MenuTarifa extends State<MenuTarifa> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Tarifa"),
        backgroundColor: Colors.green[300],
      ),
      body: Principal(),
    );
  }
}

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 25,
          left: 10,
          child: Container(
              child: Row(
            children: <Widget>[
              Text(
                "Valo por minuto: ",
                style: TextStyle(fontSize: 25),
              ),
              Icon(Icons.attach_money),
              Text(
                "550.-",
                style: TextStyle(fontSize: 25),
              )
            ],
          )),
        ),
        Positioned(
          top: 100,
          child: bodyData(),
        ),
      ],
    );
  }
}

Widget bodyData() => DataTable(
      columns: <DataColumn>[
        DataColumn(label: Text("Fecha")),
        DataColumn(label: Text("Monto")),
        DataColumn(label: Text("Estado")),
      ],
      rows: <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text("13/11/19")),
            DataCell(Text("550")),
            DataCell(Text("Activo")),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text("19/11/19")),
            DataCell(Text("450")),
            DataCell(Text("Inactivo")),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text("23/11/19")),
            DataCell(Text("320")),
            DataCell(Text("Inactivo")),
          ],
        ),
      ],
    );
