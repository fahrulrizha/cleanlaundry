import 'package:flutter/material.dart';

class TransactionHistoryPage extends StatelessWidget {
  final List<Map<String, String>> transactions = [
    {
      'date': '2024-12-15',
      'customer': 'John Doe',
      'details': 'Cuci Kering (2kg)',
      'amount': 'Rp 30,000'
    },
    {
      'date': '2024-12-14',
      'customer': 'Jane Smith',
      'details': 'Cuci Setrika (3kg)',
      'amount': 'Rp 60,000'
    },
    {
      'date': '2024-12-13',
      'customer': 'Michael Johnson',
      'details': 'Setrika Saja (5kg)',
      'amount': 'Rp 50,000'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riwayat Transaksi'),
      ),
      body: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final transaction = transactions[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title:
                  Text('${transaction['customer']} - ${transaction['amount']}'),
              subtitle: Text(
                '${transaction['details']}\nTanggal: ${transaction['date']}',
              ),
            ),
          );
        },
      ),
    );
  }
}
