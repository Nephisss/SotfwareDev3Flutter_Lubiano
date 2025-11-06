import 'package:flutter/material.dart';

void main() => runApp(FormInputApp());

class FormInputApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserFormPage(),
    );
  }
}

class UserFormPage extends StatefulWidget {
  @override
  State<UserFormPage> createState() => _UserFormPageState();
}

class _UserFormPageState extends State<UserFormPage> {
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final emailController = TextEditingController();

  void _showData() {
    final data =
        'Name: ${nameController.text}\nAge: ${ageController.text}\nEmail: ${emailController.text}';
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form and Input Fields')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: nameController, decoration: InputDecoration(labelText: 'Name')),
            TextField(controller: ageController, decoration: InputDecoration(labelText: 'Age')),
            TextField(controller: emailController, decoration: InputDecoration(labelText: 'Email')),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _showData, child: Text('Submit')),
          ],
        ),
      ),
    );
  }
}
