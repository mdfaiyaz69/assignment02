import 'package:flutter/material.dart';

void main() {
  runApp(ContactApp());
}

class ContactApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact List',
      debugShowCheckedModeBanner: false,
      home: ContactListPage(),
    );
  }
}

class Contact {
  final String name;
  final String number;

  Contact(this.name, this.number);
}

class ContactListPage extends StatefulWidget {
  @override
  _ContactListPageState createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final List<Contact> _contacts = [];

  void _addContact() {
    String name = _nameController.text.trim();
    String number = _numberController.text.trim();
    if (name.isNotEmpty && number.isNotEmpty) {
      setState(() {
        _contacts.add(Contact(name, number));
      });
      _nameController.clear();
      _numberController.clear();
    }
  }

  void _deleteContact(int index) {
    setState(() {
      _contacts.removeAt(index);
    });
  }

  void _showDeleteConfirmation(int index) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Confirmation'),
        content: Text('Are you sure for Delete?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              _deleteContact(index);
              Navigator.pop(context);
            },
            child: Text('Delete', style: TextStyle(color: Colors.redAccent)),
          ),
        ],
      ),
    );
  }

  Widget _buildContactTile(Contact contact, int index) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text(contact.name),
      subtitle: Text(contact.number),
      trailing: Icon(Icons.call, color: Colors.blue),
      onLongPress: () => _showDeleteConfirmation(index),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact List')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _numberController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _addContact,
              child: Text('Add'),
            ),
            SizedBox(height: 10),
            Expanded(
              child: _contacts.isEmpty
                  ? Center(child: Text('No contacts added yet.'))
                  : ListView.builder(
                itemCount: _contacts.length,
                itemBuilder: (context, index) =>
                    _buildContactTile(_contacts[index], index),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
