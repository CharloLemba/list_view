import 'package:flutter/material.dart';

class ListContact extends StatelessWidget {
  const ListContact({super.key, required this.nama, required this.nomorHP});
  final String nama;
  final String nomorHP;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text(nama, style: TextStyle(fontSize: 20)),
        subtitle: Text(nomorHP),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(icon: Icon(Icons.call), onPressed: () {}),
            SizedBox(width: 20),
            IconButton(icon: Icon(Icons.message), onPressed: () {}),
            SizedBox(width: 20),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
