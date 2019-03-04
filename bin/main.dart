import 'package:Test1/persona.dart';

main(List<String> arguments) {

 var per1 = Persona('JORGE', 'ALEJANDRO', 'MARROQUIN', 'MARTINEZ', 1968, 2 ,3);

 print( 'Nombre: ${per1.nombre} | Alma: ${per1.alma} | Expresion: ${per1.expresion} | Poder: ${per1.poder}');
 print( 'Pinaculo:');
 print( '${per1.pinaculo}\n');

 print( '${per1.puente1}\n');
}
