
import 'package:flutter/material.dart';
import 'package:smartapp/persianas.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF6e031c), // Color de fondo de la pantalla
      ),
      home: AirConditionerControlScreen(),
    );
  }
}

class AirConditionerControlScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6e031c), // Color #6e031c para la AppBar
        title: Text('Control de Aire Acondicionado', style: TextStyle(color: Colors.white)), // Texto blanco
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Alinea los elementos a los extremos del Row
              children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 70, top: 50), // Agregar espaciado a todo el Column
                child: Column(
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF6e031c), // Color de fondo del botón
                      ),
                      onPressed: () {
                        // Agregar lógica para encender el aire acondicionado
                      },
                      child: Text('Encender', style: TextStyle(color: Colors.white)), // Color #6e031c para el texto
                    ),
                    SizedBox(height: 10), // Espacio entre los botones y el texto
                    Text(
                      'Estado Actual: ON',
                      style: TextStyle(
                        color: Color(0xFF6e031c),
                        fontSize: 16,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF6e031c), // Color de fondo del botón
                      ),
                      onPressed: () {
                        // Agregar lógica para apagar el aire acondicionado
                      },
                      child: Text('Apagar', style: TextStyle(color: Colors.white)), // Color #6e031c para el texto
                    ),
                  ],
                ),
              ),
              Padding(
              padding: EdgeInsets.only(left: 70, top: 50, right: 50),
                child:Column(
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary:  Color(0xFF6e031c), // Color de fondo del botón
                      ),
                      onPressed: () {
                        // Agregar lógica para subir la temperatura
                      },
                      child: Icon(Icons.arrow_upward, color: Colors.white), // Color #6e031c para el icono
                    ),
                    SizedBox(height: 10), // Espacio entre los botones y el texto
                    Text(
                      'TEMP:20F',
                      style: TextStyle(
                        color: Color(0xFF6e031c),
                        fontSize: 16,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary:  Color(0xFF6e031c), // Color de fondo del botón
                      ),
                      onPressed: () {
                        // Agregar lógica para bajar la temperatura
                      },
                      child: Icon(Icons.arrow_downward, color:  Colors.white), // Color #6e031c para el icono
                    ),
                  ],
                ),
              ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft, // Alinea el texto "Historial" a la izquierda
              child: Text(
                'Historial',
                style: TextStyle(
                  color: Color(0xFF6e031c),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: Text('Fecha: 29/10/2023', style: TextStyle(fontSize: 16)),
                          ),
                        ),
                        Container(
                          color: Color(0xFF6e031c), // Color del fondo para simular la línea divisoria
                          width: 2, // Ancho de la línea divisoria
                          height: 50, // Altura fija de la línea divisoria
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: <Widget>[
                              Text('Texto 1', style: TextStyle(fontSize: 16)),
                              Text('Texto 2', style: TextStyle(fontSize: 16)),
                              Text('Texto 3', style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: Text('Fecha: 30/10/2023', style: TextStyle(fontSize: 16)),
                          ),
                        ),
                        Container(
                          color: Color(0xFF6e031c), // Color del fondo para simular la línea divisoria
                          width: 2, // Ancho de la línea divisoria
                          height: 50, // Altura fija de la línea divisoria
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: <Widget>[
                              Text('Texto 4', style: TextStyle(fontSize: 16)),
                              Text('Texto 5', style: TextStyle(fontSize: 16)),
                              Text('Texto 6', style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => PersianasScreen()));
        },
        child: Icon(Icons.blur_on),
      ),
    );
  }
}
