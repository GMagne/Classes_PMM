import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nom = '', _email = '', _data = '', _pais = '';
  TextEditingController _inputFieldDataController = TextEditingController();
  List<String> _paisos = [
    'Andorra',
    'Anglaterra',
    'Dinamarca',
    'Espanya',
    'França'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
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
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counter: Text('Lletres ${_nom.length}'),
        hintText: 'Nom de l\'usuari',
        labelText: 'Nom',
        helperText: 'Posi el nom complet',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
      onChanged: (valor) {
        setState(() {
          _nom = valor;
        });
      },
    );
  }

  Widget _crearPersona() {
    return ListTile(
        title: Text('Nom: $_nom'),
        subtitle: Text('Correu: $_email'),
        trailing: Text(_pais));
  }

  Widget _crearEmail() {
    return TextField(
      autofocus: false,
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counter: Text('Lletres ${_email.length}'),
        hintText: 'exemple@paucasesnovescifp.cat',
        labelText: 'Email',
        helperText: 'Escriu una adreça de correu electrònic',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
      onChanged: (valor) => setState(() {
        _email = valor;
      }),
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Password',
          labelText: 'Password',
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.lock)),
      onChanged: (valor) {
        // setState(() {
        //   _nom = valor;
        // });
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
        SizedBox(width: 30.0),
        DropdownButton(
          items: getOptionDropdown(),
          onChanged: (opcio) {
            setState(() {
              _pais = opcio as String;
            });
          },
          hint: Text(_pais),
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
