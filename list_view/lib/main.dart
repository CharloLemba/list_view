import 'package:flutter/material.dart';
import 'package:list_view/list_contact.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.white,
          title: Text("List View"),
          leading: Icon(Icons.list),
        ),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Text(
                    "Simple Contact List",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: ListView(
                      children: [
                        ListContact(nama: "Charlo", nomorHP: "081234567890"),
                        SizedBox(height: 15),
                        ListContact(nama: "Vivaldi", nomorHP: "080987654321"),
                        SizedBox(height: 15),
                        ListContact(nama: "Lemba", nomorHP: "088642135790"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
