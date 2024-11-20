import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  List<String> _paisos = [
    'Andorra',
    'Anglaterra',
    'Burkina Faso',
    'Calodenia',
    'Espanya'
  ];
  String _nom = '', _email = '', _data = '', _pais = 'Andorra';
  TextEditingController _inputFieldDataController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Divider(),
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearData(context),
          Divider(),
          _crearDropdown(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      onChanged: (String txt) {
        setState(() {
          _nom = txt;
        });
      },
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          icon: Icon(Icons.account_box),
          labelText: 'Nom',
          hintText: 'Guillem Alomar Cladera',
          helperText: 'Posa el teu nom',
          counter: Text('Lletres: ${_nom.length}'),
          suffixIcon: Icon(Icons.accessibility),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Nom: $_nom'),
      subtitle: Text('Email: $_email'),
      trailing: Text(_pais),
    );
  }

  Widget _crearEmail() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        icon: Icon(Icons.mail),
        labelText: 'Email',
        hintText: 'acg@paucasesnovescifp.cat',
        helperText: 'Escriu un email',
        suffixIcon: Icon(Icons.mark_email_read),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
      onChanged: (String txt) {
        setState(() {
          _email = txt;
        });
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        icon: Icon(Icons.lock),
        labelText: 'Password',
        hintText: '1234',
        helperText: 'Escriu una contrasenya',
        suffixIcon: Icon(Icons.lock_open),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
      onChanged: (String txt) {
        setState(() {});
      },
    );
  }

  Widget _crearData(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDataController,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Data naixement',
        labelText: 'Data naixement',
        suffixIcon: Icon(Icons.perm_contact_calendar),
        icon: Icon(Icons.calendar_today),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _seleccionaData(context);
      },
    );
  }

  void _seleccionaData(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        locale: Locale('es', 'ES'),
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2025));
    if (picked != null) {
      setState(() {
        _data = picked.toString();
        _inputFieldDataController.text = _data.substring(0, 10);
      });
    }
  }

  Widget _crearDropdown() {
    return Row(
      children: [
        Icon(Icons.language),
        SizedBox(width: 20),
        DropdownButton(
          hint: Text('Hola'),
          value: _pais,
          items: getOptionDropdown(),
          onChanged: (opcioSelecccionada) {
            setState(() {
              _pais = opcioSelecccionada ?? '';
            });
          },
        ),
      ],
    );
  }

  List<DropdownMenuItem<String>> getOptionDropdown() {
    List<DropdownMenuItem<String>> llista = [];
    _paisos.forEach((pais) {
      llista.add(DropdownMenuItem(
        child: Text(pais),
        value: pais,
      ));
    });
    return llista;
  }
}
