import 'package:api_intergration_demo/practise/solid_principals/dart_model/person.dart';
import 'package:flutter/material.dart';
class Model extends StatefulWidget {
  const Model({super.key});

  @override
  State<Model> createState() => _ModelState();
}

class _ModelState extends State<Model> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ahsan Ali Shah"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Person person = Person(name: "Ahsan");
          Person person1 = Person(name: "Ahsan");
          print("****Flutter practise****");
          print(person1 == person);
          print(person.hashCode.toString());
          print(person1.hashCode.toString());

        }
      ),
    );
  }
}
