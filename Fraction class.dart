import 'package:test/test.dart';
class Fraction{
  int _num;
  int _den;
  Fraction(this._num,this._den);
  factory Fraction.values({required int numerator,required int denominator})=>Fraction(numerator,denominator);

  negate(){

    this._num*=-1;
  }

  double toDouble(){

    return _num/(_den);


  }

  @override
  String toString()=>"$_num/$_den";


}