import 'package:api_intergration_demo/practise/solid_principals/dart_model/person.dart';
import 'package:dio/dio.dart';
void main() {
  Person person = Person(name: 'name');
  Person person1 = Person(name: 'name');

  print(person1 == person);
  print(person1.hashCode.toString());
  print(person.hashCode.toString());
  
}
