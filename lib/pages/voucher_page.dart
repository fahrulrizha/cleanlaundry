import 'package:flutter/material.dart';

class VoucherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Voucher')),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.card_giftcard),
              title: Text('Voucher ${index + 1}'),
              subtitle: Text('Diskon: ${(index + 1) * 10}%'),
            ),
          );
        },
      ),
    );
  }
}
