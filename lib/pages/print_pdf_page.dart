import 'package:flutter/material.dart';

class PrintPDFPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cetak PDF Laporan Keuangan')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Integrasikan logika cetak PDF di sini
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Laporan keuangan berhasil dicetak!')),
            );
          },
          child: Text('Cetak PDF'),
        ),
      ),
    );
  }
}
