import 'package:flutter/material.dart';
import 'package:onehand/paginas/menuVenta.dart';
import 'package:onehand/paginas/menuTarifa.dart';
import 'package:onehand/login/loginscreen.dart';

class MenuPagina extends StatefulWidget {
  static Route<dynamic> route(String mensaje) {
    return MaterialPageRoute(
      builder: (context) => MenuPagina(mensaje: mensaje),
    );
  }

  final String mensaje;

  const MenuPagina({Key key, @required this.mensaje}) : super(key: key);

  @override
  _MenuPagina createState() => new _MenuPagina();
}

class _MenuPagina extends State<MenuPagina> {
  String currentProfilePic = "assets/avatar-icon-png-8.jpg";
  String otherProfilePic = "assets/avatar-icon-png-8.jpg";

  void switchAccounts() {
    String picBackup = currentProfilePic;
    this.setState(() {
      currentProfilePic = otherProfilePic;
      otherProfilePic = picBackup;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Menu Principal"),
          backgroundColor: Colors.green[300],
        ),
        //pantalla desplegable
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountEmail: new Text("sarenasf@alumnos.ceduc.cl"),
                accountName: new Text("Sebastian Arenas"),
                currentAccountPicture: new GestureDetector(
                  child: new CircleAvatar(
                    backgroundImage: new AssetImage(currentProfilePic),
                  ),
                  onTap: () => print("Cambio cuenta"),
                ),
                otherAccountsPictures: <Widget>[
                  new GestureDetector(
                    child: new CircleAvatar(
                      backgroundImage: new AssetImage(otherProfilePic),
                    ),
                    onTap: () => switchAccounts(),
                  ),
                ],
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                        image: new AssetImage("assets/imageFondo.jpeg"),
                        fit: BoxFit.fill)),
              ),
              //Seleccion de pestañas
              new ListTile(
                  title: new Text("Tarifas"),
                  trailing: new Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuTarifa()),
                    );
                  }),
              new ListTile(
                  title: new Text("Ventas"),
                  trailing: new Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuVentas()),
                    );
                  }),
              new Divider(),
              new ListTile(
                  title: new Text("Salir"),
                  trailing: new Icon(Icons.cancel),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  }),
            ],
          ),
        ),
        //pantalla principal MAPA
        body: new Principal());
  }
}

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 50,
          left: 20,
          child: Container(
            child: SizedBox(
              width: 320,
              child: RaisedButton(
                elevation: 20,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                color: Colors.blue,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Ventas",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 50,),
                        Icon(
                          Icons.attach_money,
                          size: 50,
                          color: Colors.white,
                        ),
                        Text(
                          "152.562",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuTarifa()),
                  );
                },
              ),
            ),
          ),
        ),
        Positioned(
          top: 250,
          left: 20,
          child: Container(
            child: SizedBox(
              width: 320,
              child: RaisedButton(
                elevation: 20,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                color: Colors.blue,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Atenciones",
                      style: TextStyle(fontSize: 50,color: Colors.white,),
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 50,),
                        Icon(
                          Icons.attach_money,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text(
                          "73.659",
                          style: TextStyle(fontSize: 30,color: Colors.white,),
                        ),
                      ],
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuVentas()),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  // final
}
