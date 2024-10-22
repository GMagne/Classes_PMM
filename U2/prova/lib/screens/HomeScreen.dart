import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final TextStyle estil = const TextStyle(
      fontSize: 30,
      color: Colors.black87,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      decoration: TextDecoration.lineThrough,
      decorationColor: Colors.lightBlueAccent,
      backgroundColor: Colors.cyan,
      shadows: [
        Shadow(
          color: Colors.red,
          offset: Offset(5, 5),
          blurRadius: 3,
        )
      ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "1ra App",
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hola"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Row(
            children: [
              Text(
                "Hola",
                style: estil,
              ),
              Container(width: 50, height: 50),
              Text(
                "123",
                style: estil.copyWith(fontSize: 10),
              ),
              Container(width: 50, height: 50),
              Text(
                "Adeu",
                style: estil,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
          ),
        ),
      ),
    );
  }
}
