import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF6e031c),
      ),
      home: PersianasScreen(),
    );
  }
}

class PersianasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6e031c),
        title: Text('Control de Persianas', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              PersianaCard(icon: Icons.lock_open, text: 'Abrir Persiana'),
              SizedBox(width: 20),
              PersianaCard(icon: Icons.lock, text: 'Cerrar Persiana'),
            ],
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
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
    );
  }
}

class PersianaCard extends StatefulWidget {
  final IconData icon;
  final String text;

  PersianaCard({required this.icon, required this.text});

  @override
  _PersianaCardState createState() => _PersianaCardState();
}

class _PersianaCardState extends State<PersianaCard> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(10),
      color: isPressed ? Color(0xFF6e031c) : Colors.white, // Cambia el color cuando se presiona
      child: InkWell(
        onTap: () {
          setState(() {
            isPressed = !isPressed;
          });
          // Agregar lógica para abrir o cerrar la persiana según el card presionado
        },
        child: Column(
          children: <Widget>[
            Icon(
              widget.icon,
              size: 48,
              color: isPressed ? Colors.white : Color(0xFF6e031c), // Cambia el color del icono
            ),
            SizedBox(height: 10),
            Text(
              widget.text,
              style: TextStyle(
                color: isPressed ? Colors.white : Color(0xFF6e031c), // Cambia el color del texto
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  } 
}

