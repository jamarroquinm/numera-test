import 'package:Test1/nombre.dart';
import 'package:Test1/Constantes.dart' as utiles;

class Persona {
  Nombre _primerNombre;
  Nombre _segundoNombre;
  Nombre _apellidoPaterno;
  Nombre _apellidoMaterno;

  int _ano = 0;
  int _mes = 0;
  int _dia = 0;

  int _alma = 0;
  int _expresion = 0;
  int _poder = 0;

  int _a = 0;
  int _b = 0;
  int _c = 0;
  int _d = 0;
  int _e = 0;
  int _f = 0;
  int _g = 0;
  int _h = 0;
  int _i = 0;
  int _j = 0;
  int _k = 0;
  int _l = 0;
  int _m = 0;
  int _n = 0;
  int _o = 0;
  int _p = 0;
  int _q = 0;
  int _r = 0;
  int _s = 0;
  int _x = 0;
  int _y = 0;
  int _z = 0;

  List<int> _t = new List<int>();
  List<int> _w1 = new List<int>();
  int _w2 = 0;
  int _w3 = 0;

  int _pi1 = 0;
  int _pi2 = 0;
  int _pi3 = 0;
  int _pi4 = 0;


  Persona(String primerNombre, String segundoNombre, String apellidoPaterno, String apellidoMaterno, int ano, int mes, int dia) {

    _primerNombre = new Nombre(primerNombre);
    _segundoNombre = new Nombre(segundoNombre);
    _apellidoPaterno = new Nombre(apellidoPaterno);
    _apellidoMaterno = new Nombre(apellidoMaterno);

    _ano = ano;
    _mes = mes;
    _dia = dia;

    _alma = utiles.reduceLista([
      _primerNombre.valorVocales,
      _segundoNombre.valorVocales,
      _apellidoPaterno.valorVocales,
      _apellidoMaterno.valorVocales]);

    _expresion = utiles.reduceLista([
      _primerNombre.valorConsonantes,
      _segundoNombre.valorConsonantes,
      _apellidoPaterno.valorConsonantes,
      _apellidoMaterno.valorConsonantes]);

    _poder = utiles.reduceLista([
      _primerNombre.valorNombre,
      _segundoNombre.valorNombre,
      _apellidoPaterno.valorNombre,
      _apellidoMaterno.valorNombre]);

    _a = utiles.reduceNumero(mes);
    _b = utiles.reduceNumero(dia);
    _c = utiles.reduceNumero(ano);
    _d = utiles.reduceLista([_a, _b, _c]);
    _e = utiles.reduceNumero(_a + _b);
    _f = utiles.reduceNumero(_b + _c);
    _g = utiles.reduceNumero(_e + _f);
    _h = utiles.reduceNumero(_a + _c);
    _i = utiles.reduceNumero(_e + _f + _g);
    _j = utiles.reduceNumero(_h + _d);
    _k = utiles.reduceResta(_a, _b);
    _l = utiles.reduceResta(_b, _c);
    _m = utiles.reduceResta(_k, _l);
    _n = utiles.reduceResta(_a, _c);
    _o = utiles.reduceNumero(_k + _l + _m);
    _p = utiles.reduceNumero(_d + _o);
    _q = utiles.reduceNumero(_k + _m);
    _r = utiles.reduceNumero(_l + _m);
    _s = utiles.reduceNumero(_q + _r);
    _x = utiles.reduceNumero(_b + _d);
    _y = utiles.reduceNumero(_a + _b + _c + _d + _x);
    _z = utiles.regalo(ano);

    _t = _ausentes();
    _w1 = _trip1();

    _pi1 = (_k - _e).abs();
    _pi2 = (_f - _l).abs();
    _pi3 = (_g - _m).abs();
    _pi4 = (_h - _n).abs();


  }

  List<int> _trip1(){

    var base = {
      0: 0,
      1: 0,
      2: 0,
      3: 0,
      4: 0,
      5: 0,
      6: 0,
      7: 0,
      8: 0,
      9: 0,
      11: 0,
      22: 0
    };
    int idx;
    List<int> ret = new List<int>();

    base[_k] += 1;
    base[_l] += 1;
    base[_m] += 1;
    base[_n] += 1;
    base[_o] += 1;
    base[_p] += 1;
    base[_q] += 1;
    base[_r] += 1;
    base[_s] += 1;

    for( var i=0; i<=11; i++) {

      if( i<=9 ) {
        idx = i;
      }
      else {
        if( i==10 ) idx = 11;
        else idx = 22;
      }

      if( base[idx] > 2 ) ret.add(i);

    }

    return ret;
  }


  List<int> _ausentes(){

    var base = {
      0: 0,
      1: 0,
      2: 0,
      3: 0,
      4: 0,
      5: 0,
      6: 0,
      7: 0,
      8: 0,
      9: 0,
      11: 0,
      22: 0
    };
    int idx;
    List<int> ret = new List<int>();

    base[_a] += 1;
    base[_b] += 1;
    base[_c] += 1;
    base[_d] += 1;
    base[_e] += 1;
    base[_f] += 1;
    base[_g] += 1;
    base[_h] += 1;
    base[_i] += 1;
    base[_j] += 1;
    base[_k] += 1;
    base[_l] += 1;
    base[_m] += 1;
    base[_n] += 1;
    base[_o] += 1;
    base[_p] += 1;
    base[_q] += 1;
    base[_r] += 1;
    base[_s] += 1;

    for( var i=0; i<=11; i++) {

      if( i<=9 ) {
        idx = i;
      }
      else {
        if( i==10 ) idx = 11;
        else idx = 22;
      }

      if( base[idx] == 0 ) ret.add(i);

    }

    return ret;
  }



  String get nombre => _primerNombre.nombre + ' ' + _segundoNombre.nombre + ' ' + _apellidoPaterno.nombre + ' ' +  _apellidoMaterno.nombre;

  int get alma => _alma;

  int get expresion => _expresion;

  int get poder => _poder;

  String get pinaculo =>  '             ${_h}\n' +
                          '             ${_g}           ${_j}\n' +
                          '         ${_e}   ${_i}   ${_f} \n' +
                          '     ${_a}   |   ${_b}   |   ${_c}  |    ${_d}\n' +
                          '         ${_k}   ${_o}   ${_l} \n' +
                          '             ${_m}\n' +
                          '     ${_p}\n' +
                          '             ${_n}\n' +
                          '         ${_q}   ${_r}   ${_s} \n' +
                          'x: ${_x}\n' +
                          'y: ${_y}\n' +
                          'z: ${_z}\n' ;

  String get puente1 => 'Puente 1 -- e: ${_e}  b: ${_b}  k: ${_k}  a: ${_a}  --> ${_pi1}';

}