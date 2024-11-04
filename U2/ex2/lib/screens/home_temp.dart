import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final List<String> elements = const [
    'Element 1',
    'Element 2',
    'Element 3',
    'Element 4'
  ];

  const HomePageTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Component Temp",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: _crearElementsCurt(),
      ),
    );
  }

  List<Widget> _crearElements() {
    List<Widget> llista = [];
    elements.forEach((element) {
      llista.add(ListTile(
        title: Text(element),
      ));
      llista.add(Divider());
    });
    llista.add(Text("Element 5"));

    return llista;
  }

  List<Widget> _crearElementsCurt() {
    // Amb aquest mètode volem emprar la funcionalitat Map de les llistes
    var widgets = elements.map((element) {
      return Column(
        children: [
          ListTile(
            title: Text(element + "!"),
            subtitle: Text("Subtítol " + element),
            leading: Icon(Icons.access_alarm),
            trailing: Icon(Icons.add),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    });

    return widgets.toList();
  }
}
