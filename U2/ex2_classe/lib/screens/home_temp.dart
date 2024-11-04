import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  //const HomePageTemp({super.key});

  final elements = ['Element 1', 'Element 2', 'Element 3', 'Element 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: _crearElementsList2(),
      ),
    );
  }

  List<Widget> _crearElementsList() {
    List<Widget> llista = [];
    elements.forEach((element) {
      llista.add(Divider());
      llista.add(ListTile(
        title: Text(element),
      ));
    });
    llista.add(Divider());
    return llista;
  }

  List<Widget> _crearElementsList2() {
    var widgets = elements.map((element) {
      return Column(
        children: [
          ListTile(
            title: Text(element),
            subtitle: Text("Subtítol del " + element),
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
