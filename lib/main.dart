
import 'package:flutter/material.dart';

void main() {
  runApp(ContadorApp());
}

class ContadorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador con Círculo',
      home: ContadorPantalla(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ContadorPantalla extends StatefulWidget {
  @override
  _ContadorPantallaState createState() => _ContadorPantallaState();
}

class _ContadorPantallaState extends State<ContadorPantalla> {
  int contador = 1;

  void incrementarContador() {
    setState(() {
      contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '\$contador',
              style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            GestureDetector(
              onTap: incrementarContador,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(Icons.add, color: Colors.white, size: 40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
