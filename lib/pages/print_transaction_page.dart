import 'package:flutter/material.dart';

class PrintTransactionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cetak Transaksi')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Integrasikan logika cetak transaksi di sini
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Transaksi berhasil dicetak!')),
            );
          },
          child: Text('Cetak Transaksi'),
        ),
      ),
    );
  }
}
