import 'package:api_intergration_demo/modules/connectivity/controllers/connectivity_controller.dart';
import 'package:flutter/material.dart';
import 'package:api_intergration_demo/core/utils/enums/connectivity.dart';
import 'package:get/get.dart';

class ConnectivityScreen extends StatefulWidget {
  const ConnectivityScreen({super.key});

  @override
  State<ConnectivityScreen> createState() => _ConnectivityScreenState();
}

class _ConnectivityScreenState extends State<ConnectivityScreen> {

  final ConnectivityController _connectivityController = Get.find<ConnectivityController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Connectivity Example')),
      body: Center(
        child: Obx(() {
          switch (_connectivityController.status.value) {
            case ConnectivityStatus.Wifi:
              return Text("Connected via ${ConnectivityStatus.Wifi}",style: TextStyle(fontSize: 12, color: Colors.red.withValues(alpha: 1.0)),);
            case ConnectivityStatus.Cellular:
              return Text("Connected via ${ConnectivityStatus.Cellular}",style: TextStyle(fontSize: 12, color: Colors.red.withValues(alpha: 1.0)),);
            case ConnectivityStatus.Offline:
              return Text("${ConnectivityStatus.Offline}",style: TextStyle(fontSize: 12, color: Colors.grey.withValues(alpha: 1.0)),);
          }
        }),
      ),
    );
  }
}
