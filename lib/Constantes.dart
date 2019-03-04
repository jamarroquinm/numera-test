bool esVocal(char) {

  if( char == 'A' || char == 'E' || char == 'I' || char == 'O' || char == 'U') return true;
  return false;

}

int reduceLista(List<int> numeros) {

   int suma = 0;
   List<int> nuevos;

   for( var i=0; i<numeros.length; i++) {
     suma += numeros[i];
   }

   if( suma <= 9 || suma == 11 || suma == 22 ) {
     return suma;
   }
   else if( suma == 10 ){
     return 1;
   }
   else {
     nuevos = listaDigitos(suma);
     suma = reduceLista(nuevos);
   }

   return suma;
}

int reduceNumero(int numero) {

  List<int> nuevos;

  if( numero <= 9 || numero == 11 || numero == 22 ) {
    return numero;
  }
  else if( numero == 10 ){
    return 1;
  }
  else {
    nuevos = listaDigitos(numero);
    return reduceLista(nuevos);
  }
}


int reduceResta(int x, int y) {

  int a = cambiaMaestro( x );
  int b = cambiaMaestro( y );

  int r = (a - b).abs();

  return reduceNumero(r);
}

int cambiaMaestro(int num) {

  if( num == 11 ) return 2;
  if( num == 22 ) return 4;
  return num;
}

int regalo( int ano ) {

  List<int> digitos = listaDigitos(ano);
  int ret = 0;

  //todo: Validar que año sea de 4 digitios

  if( digitos[2] == 0 && digitos[3] == 0 ) {
    //todo. los años que terminan en 00
  }
  else {
    ret = reduceLista([digitos[2], digitos[3]]);
  }

  return ret;
}

List<int> listaDigitos(int num) {

  String char;
  String chars = num.toString();
  List<int> lista = new List<int>();


  for( var i=0; i<chars.length; i++) {
    char = chars.substring(i, i+1);
    lista.add(int.parse(char));
  }

  return lista;

}
