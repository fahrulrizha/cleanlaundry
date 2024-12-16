import 'package:flutter/material.dart';

class PriceListPage extends StatelessWidget {
  final List<Map<String, dynamic>> priceList = [
    {'item': 'Cuci Kering', 'price': 15000},
    {'item': 'Cuci Setrika', 'price': 20000},
    {'item': 'Setrika Saja', 'price': 10000},
    {'item': 'Dry Cleaning', 'price': 30000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Harga'),
      ),
      body: ListView.builder(
        itemCount: priceList.length,
        itemBuilder: (context, index) {
          final item = priceList[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(item['item']),
              trailing: Text('Rp ${item['price']}'),
            ),
          );
        },
      ),
    );
  }
}
