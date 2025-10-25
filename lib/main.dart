import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueGrey,
          primary: Colors.blueGrey.shade700,
        ),
        useMaterial3: true,
      ),
      home: const ContactListScreen(),
    );
  }
}

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController(text: 'Hasan');
    final phoneController = TextEditingController(text: '01745-777777');

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact List',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
            ),
            const SizedBox(height: 12.0),
            TextFormField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone',
              ),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  textStyle: const TextStyle(fontSize: 16),
                ),
                child: const Text('Add'),
              ),
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: ListView(
                children: const [
                  ContactItem(
                    name: 'Jawad',
                    phone: '01877-777777',
                    textColor: Colors.red, 
                  ),
                  ContactItem(
                    name: 'Ferdous',
                    phone: '01673-777777',
                    textColor: Colors.red, 
                  ),
                  ContactItem(
                    name: 'Hasan',
                    phone: '01745-777777',
                    textColor: Colors.red,
                  ),
                  ContactItem(
                    name: 'Hasan',
                    phone: '01745-777777',
                    textColor: Colors.red,
                  ),
                  ContactItem(
                    name: 'Hasan',
                    phone: '01745-777777',
                    textColor: Colors.red,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  final String name;
  final String phone;
  final Color textColor; 

  const ContactItem({
    super.key,
    required this.name,
    required this.phone,
    this.textColor = Colors.black, 
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      child: ListTile(
        leading: Icon(
          Icons.person_pin,
          color: Colors.brown.shade400,
          size: 30,
        ),
        title: Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: textColor, 
          ),
        ),
        subtitle: Text(phone),
        trailing: Icon(
          Icons.call,
          color: Colors.blue.shade700,
        ),
      ),
    );
  }
}