import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController controller;

  HomePage(this.controller);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              // Bagian Header
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/logo_desa.png', // Path ke logo desa
                      height: 100,
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Selamat datang',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'di Desa Pasir Bolang',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Nikmati pelayanan Mobile Sistem Informasi Geografis Desa Pasir Bolang',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Bagian Layanan
              Text(
                'Layanan untukmu',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildServiceItem(
                      Icons.person, 'Profil', context, '/profile'),
                  _buildServiceItem(Icons.map, 'Peta Desa', context, '/maps'),
                  _buildServiceItem(Icons.data_exploration, 'Data Desa',
                      context, '/data_desa'),
                ],
              ),
              SizedBox(height: 30),

              // Bagian Berita Terbaru
              Text(
                'Berita Terbaru',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),

              // Berita 1
              _buildNewsItem(
                'assets/images/berita1.jpeg', // Path ke gambar berita
                'Ratusan Pemilih Pemula di SMK Pustek Mitra Dapat Pendidikan Politik dari Bawaslu Banten ',
                'Sebanyak 350 siswa SMK Pustek Mitra Tigaraksa di Kabupaten Tangerang mendapatkan pendidikan politik dari Badan Pengawas Pemilu (Bawaslu) Provinsi Banten.',
              ),
              SizedBox(height: 10),

              // Berita 2
              _buildNewsItem(
                'assets/images/berita2.jpeg', // Path ke gambar berita
                'Pabrik Sandal Jepit di Tangerang Terbakar',
                'Kebakaran melanda sebuah pabrik produsen sandal jepit di Desa Pasir Bolang, Kecamatan Tigaraksa, Kabupaten Tangerang, Banten, Selasa (17/9/2024) malam. Kebakaran diduga akibat korsleting listrik.',
              ),
              SizedBox(height: 10),

              // Berita 3
              _buildNewsItem(
                'assets/images/berita3.jpg', // Path ke gambar berita
                'Warga Antusias Ikuti Reses Dewan Provinsi',
                'Ratusan warga di wilayah Kecamatan Tigaraksa Kabupaten Tangerang Banten antusias mengikuti reses masa sidang tahun 2024 – 2025 anggota DPRD Provinsi Banten komisi II fraksi PDIP Dapil Banten 4 Kabupaten Tangerang A',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      selectedIndex: 0,
      controller: controller,
    );
  }

  // Widget untuk item layanan dengan navigasi
  Widget _buildServiceItem(
      IconData icon, String title, BuildContext context, String route) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route); // Navigasi ke route tertentu
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.blueGrey, size: 30),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(fontSize: 12, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  // Widget untuk item berita
  Widget _buildNewsItem(String imagePath, String title, String description) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
