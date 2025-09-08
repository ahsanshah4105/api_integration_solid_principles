import 'package:api_intergration_demo/modules/countries/controller/country_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({super.key});

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  final  CountryController _controller = Get.find<CountryController>();


  @override
  Widget build(BuildContext context) {
    _controller.fetchCountries();
    return Scaffold(
      appBar: AppBar(title: const Text("Countries")),
      body: Obx(() {

        if (_controller.countries.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: _controller.countries.length,
          itemBuilder: (context, index) {
            final country = _controller.countries[index];
            return ListTile(
              title: Text(country['name']),
              subtitle: Text("Code: ${country['code']}"),
            );
          },
        );
      }),
    );
  }
}
