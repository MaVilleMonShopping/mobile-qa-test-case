import 'package:flutter/material.dart';

class UserCredentials {
  static String username = "test@mvms.com";
  static String password = "passwordQa!1";
}

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final TextEditingController _usernameCtrl = TextEditingController();
  final TextEditingController _passCtrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formulaire"),
      ),
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.always,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Semantics(
                label: "UsernameFieldAccess",
                enabled: true,
                value: _usernameCtrl.text,
                child: TextFormField(
                  key: const Key("UsernameField"),
                  controller: _usernameCtrl,
                  decoration: const InputDecoration(
                    label: Text("Username"),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Obligatoire";
                    } else if (!value.contains("@")) {
                      return "Mauvais format";
                    }
                    return null;
                  },
                ),
              ),
              TextFormField(
                key: const Key("PassField"),
                controller: _passCtrl,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Obligatoire";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                    child: const Text("Valider"),
                    onPressed: () {
                      final isValid = _formKey.currentState!.validate();
                      if (isValid &&
                          _usernameCtrl.text == UserCredentials.username &&
                          _passCtrl.text == UserCredentials.password) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("C'est validé !"),
                          backgroundColor: Colors.green,
                        ));
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("Formulaire en erreur"),
                          backgroundColor: Colors.red,
                        ));
                      }
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
