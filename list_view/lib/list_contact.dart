import 'package:flutter/material.dart';

class ListContact extends StatefulWidget {
  const ListContact({super.key, required this.nama, required this.nomorHP});
  final String nama;
  final String nomorHP;

  @override
  State<ListContact> createState() => _ListContactState();
}

class _ListContactState extends State<ListContact> {
  bool _isRowVisible = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text(widget.nama, style: TextStyle(fontSize: 20)),
        subtitle: Text(widget.nomorHP),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // IconButton(icon: Icon(Icons.call), onPressed: () {}),
            // SizedBox(width: 20),
            // IconButton(icon: Icon(Icons.message), onPressed: () {}),
            // SizedBox(width: 20),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                setState(() {
                  _isRowVisible = !_isRowVisible;
                });
              },
            ),
            if (_isRowVisible)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(icon: Icon(Icons.call), onPressed: () {}),
                    IconButton(icon: Icon(Icons.message), onPressed: () {}),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
