import 'package:flutter/material.dart';
import 'add_order_page.dart';
import 'price_list_page.dart';
import 'transaction_history_page.dart';
import 'complaint_page.dart';
import 'edit_profile_page.dart';
import 'financial_report_page.dart';
import 'member_list_page.dart';
import 'print_pdf_page.dart';
import 'print_transaction_page.dart';
import 'voucher_page.dart';
import 'login_page.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              _showLogoutConfirmation(context);
            },
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: [
          _buildDashboardItem(
            context,
            icon: Icons.price_change,
            label: 'Daftar Harga',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PriceListPage()),
              );
            },
          ),
          _buildDashboardItem(
            context,
            icon: Icons.add_shopping_cart,
            label: 'Tambah Pesanan',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddOrderPage()),
              );
            },
          ),
          _buildDashboardItem(
            context,
            icon: Icons.history,
            label: 'Riwayat Transaksi',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TransactionHistoryPage()),
              );
            },
          ),
          _buildDashboardItem(
            context,
            icon: Icons.group,
            label: 'Daftar Member',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MemberListPage()),
              );
            },
          ),
          _buildDashboardItem(
            context,
            icon: Icons.card_giftcard,
            label: 'Voucher',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VoucherPage()),
              );
            },
          ),
          _buildDashboardItem(
            context,
            icon: Icons.feedback,
            label: 'Saran/Komplain',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ComplaintPage()),
              );
            },
          ),
          _buildDashboardItem(
            context,
            icon: Icons.attach_money,
            label: 'Laporan Keuangan',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FinancialReportPage()),
              );
            },
          ),
          _buildDashboardItem(
            context,
            icon: Icons.person,
            label: 'Edit Profil',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfilePage()),
              );
            },
          ),
          _buildDashboardItem(
            context,
            icon: Icons.print,
            label: 'Cetak PDF',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrintPDFPage()),
              );
            },
          ),
          _buildDashboardItem(
            context,
            icon: Icons.receipt,
            label: 'Cetak Transaksi',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrintTransactionPage()),
              );
            },
          ),
        ],
      ),
    );
  }

  void _showLogoutConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Logout'),
        content: Text('Apakah Anda yakin ingin keluar?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Tutup dialog
            },
            child: Text('Batal'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
                (route) => false, // Hapus semua rute sebelumnya
              );
            },
            child: Text('Logout'),
          ),
        ],
      ),
    );
  }

  Widget _buildDashboardItem(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48, color: Colors.blue),
            SizedBox(height: 8),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
