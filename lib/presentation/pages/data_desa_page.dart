import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class DataDesaPage extends StatelessWidget {
  final HomeController controller;

  DataDesaPage(this.controller);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Judul Halaman
              Text(
                'Data Desa Pasir Bolang, Tigaraksa',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),

              // Bagian Poin Penting
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Data Lokasi',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      ListTile(
                        leading:
                            Icon(Icons.account_balance, color: Colors.blue),
                        title: Text('Kantor Desa'),
                        subtitle: Text('Jl. Raya Pasir Bolang No. 123'),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.school, color: Colors.red),
                        title: Text('Sekolah Dasar'),
                        subtitle: Text('SDN Pasir Bolang 1'),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.school, color: Colors.red),
                        title: Text('SMA & SMP'),
                        subtitle: Text('Pustek mitra pasir bolang'),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.factory, color: Colors.black),
                        title: Text('PT Prima Rajuli Sukses'),
                        subtitle: Text('Pabrik di Tigaraksa'),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.mosque, color: Colors.orange),
                        title: Text('Tempat Ibadah'),
                        subtitle: Text('Masjid Al-Ihsania'),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Bagian Statistik Desa
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Statistik Desa',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Jumlah Penduduk:',
                              style: TextStyle(fontSize: 16)),
                          Text('5,500 jiwa',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500)),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Luas Wilayah:', style: TextStyle(fontSize: 16)),
                          Text('12 km²',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500)),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Pembagian Zona:',
                              style: TextStyle(fontSize: 16)),
                          Text('4 zona',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Pembagian Zona
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pembagian Zona Desa',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child:
                              Text('1', style: TextStyle(color: Colors.white)),
                        ),
                        title: Text('Zona Utara'),
                        subtitle: Text('Area perumahan dan pertanian'),
                      ),
                      Divider(),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.green,
                          child:
                              Text('2', style: TextStyle(color: Colors.white)),
                        ),
                        title: Text('Zona Timur'),
                        subtitle: Text('Area komersial dan pusat pendidikan'),
                      ),
                      Divider(),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.red,
                          child:
                              Text('3', style: TextStyle(color: Colors.white)),
                        ),
                        title: Text('Zona Selatan'),
                        subtitle: Text('Area pertanian dan perkebunan'),
                      ),
                      Divider(),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.orange,
                          child:
                              Text('4', style: TextStyle(color: Colors.white)),
                        ),
                        title: Text('Zona Barat'),
                        subtitle: Text('Area rekreasi dan tempat ibadah'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      selectedIndex: 2,
      controller: controller,
    );
  }
}
