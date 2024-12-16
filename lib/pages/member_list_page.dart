import 'package:flutter/material.dart';

class MemberListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daftar Member')),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            title: Text('Member ${index + 1}'),
            subtitle: Text('Email: member${index + 1}@example.com'),
          );
        },
      ),
    );
  }
}
