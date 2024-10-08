// Tasques asíncrones i com esperar el seu resultat

String getID(String id) {
  return 'ID de Jaume: $id';
}

// Retorna un future, per això ens donaria error
/*
String getNom(String id) async{
  return 'ID de Jaume: $id';
}

// i com ho podriem arreglar? Afegint que el resultar serà una "promesa"
*/
Future<String> getIDAsync(String id) async {
  // Map<String,dynamic>
  return 'ID de Jaume: $id';
}

//void main() async{ Els mètodes superiors també han de ser asincrons
void main() async {
  print('Inici del programa');
  print(getID('1'));

  print(getIDAsync('2')); //await

  getIDAsync('3').then((data) => print(data)); //then

  getIDAsync('4').then(print);

  final nom = await getIDAsync('5'); //await
  print(nom);
  getIDAsync('6').then(print);
  // I si volem que una funció s'executi en segons pla
  // però que acabi abans de fí de programa?
  print('Fi del programa');
}
