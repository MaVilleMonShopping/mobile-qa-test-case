import 'package:app/presentation/form.screen.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(title),
      ),
      body: Column(
        key: const Key("MainList"),
        children: [
          ListTile(
            key: Key("GoToFormScreen"),
            title: const Text("Formulaire"),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const FormScreen()));
            },
          ),
          ListTile(
            key: const Key("PermissionCameraRequest"),
            title: const Text("Activer la permission camera"),
            onTap: () async {
              final status = await Permission.camera.status;
              if (!status.isPermanentlyDenied) {
                await Permission.camera.request();
              }
            },
          ),
        ],
      ),
    );
  }
}
