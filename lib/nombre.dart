import 'package:Test1/Constantes.dart' as utiles;

class Nombre {

  static const Map _vibraciones = {
    'A': 1, 'B': 2, 'C': 3, 'D': 4, 'E': 5, 'F': 6, 'G': 7, 'H': 8, 'I': 9, 'J':1,
    'K':11, 'L': 3, 'M': 4, 'N': 5, 'Ñ': 5, 'O': 6, 'P': 7, 'Q': 8, 'R': 9, 'S':1,
    'T': 2, 'U': 3, 'V':22, 'W': 5, 'X': 6, 'Y': 7, 'Z': 8, ' ':0
  };

  String _nombre;

  List<String> _vocales = new List<String>();
  List<String> _consonantes = new List<String>();

  List<int> _vibrcionesVocales = new List<int>();
  List<int> _vibrcionesConsonantes = new List<int>();

  int _numeroVocales = 0;
  int _numeroConsonantes = 0;
  int _numeroNombre = 0;


  Nombre(String nombre){

    _nombre = nombre;

    for( var i=0; i<nombre.length; i++) {

      var char = nombre.substring(i, i+1);
      var vibracion = _vibraciones[char];


      if(  utiles.esVocal(char) ) {
        _vocales.add(char);
        _vibrcionesVocales.add(vibracion);
      }
      else {
        _consonantes.add(char);
        _vibrcionesConsonantes.add(vibracion);
      }
    }

    _numeroVocales = utiles.reduceLista(_vibrcionesVocales);
    _numeroConsonantes = utiles.reduceLista(_vibrcionesConsonantes);
    _numeroNombre = utiles.reduceLista([_numeroVocales, _numeroConsonantes]);

  }

  String get nombre => _nombre;

  int get valorVocales => _numeroVocales;

  int get valorConsonantes => _numeroConsonantes;

  int get valorNombre => _numeroNombre;

}