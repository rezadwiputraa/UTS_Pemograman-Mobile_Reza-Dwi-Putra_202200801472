import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class MapsPage extends StatelessWidget {
  final HomeController controller;

  MapsPage(this.controller);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: FlutterMap(
        options: MapOptions(
          initialCenter:
              LatLng(-6.2143694, 106.4721359), // Pusat peta di lokasi
          initialZoom: 16.2,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
          ),
          MarkerLayer(
            markers: [
              Marker(
                width: 45.0,
                height: 45.0,
                point: LatLng(-6.214506459902102, 106.47246080848609),
                child: IconButton(
                  icon: const Icon(Icons.account_balance),
                  color: Color.fromRGBO(47, 0, 255, 1),
                  iconSize: 45.0,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("kantor Desa Pasir Bolang"),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Klik"),
                              Text("Tombol Dibawah Ini"),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  launchUrl(Uri.parse(
                                      'https://maps.app.goo.gl/nKCbxq5o33qhWBbs9'));
                                },
                                child: Text("Buka di Google Maps"),
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Tutup"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Marker(
                width: 45.0,
                height: 45.0,
                point: LatLng(-6.217181450835579, 106.47416374528183),
                child: IconButton(
                  icon: const Icon(Icons.mosque),
                  color: Color.fromRGBO(255, 68, 0, 1),
                  iconSize: 45.0,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(" Masjid Pasir Bolang"),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Klik"),
                              Text("Tombol Dibawah Ini"),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  launchUrl(Uri.parse(
                                      'https://maps.app.goo.gl/b8mZnU8fTkGjWxTr5'));
                                },
                                child: Text("Buka di Google Maps"),
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Tutup"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Marker(
                width: 45.0,
                height: 45.0,
                point: LatLng(-6.214172691952002, 106.47279402490314),
                child: IconButton(
                  icon: const Icon(Icons.school),
                  color: Color.fromRGBO(255, 0, 0, 1),
                  iconSize: 45.0,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(" SMA & SMP  Pasir Bolang"),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Klik"),
                              Text("Tombol Dibawah Ini"),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  launchUrl(Uri.parse(
                                      'https://maps.app.goo.gl/HC4XHVVTf1oYkrCf8'));
                                },
                                child: Text("Buka di Google Maps"),
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Tutup"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Marker(
                width: 45.0,
                height: 45.0,
                point: LatLng(-6.218323373240858, 106.4736334072934),
                child: IconButton(
                  icon: const Icon(Icons.school_outlined),
                  color: Color.fromRGBO(255, 0, 0, 1),
                  iconSize: 45.0,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(" SD Pasir Bolang"),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Klik"),
                              Text("Tombol Dibawah Ini"),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  launchUrl(Uri.parse(
                                      'https://maps.app.goo.gl/vGeEmabJqScnBuk26'));
                                },
                                child: Text("Buka di Google Maps"),
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Tutup"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Marker(
                width: 45.0,
                height: 45.0,
                point: LatLng(-6.213631017402853, 106.47423513320605),
                child: IconButton(
                  icon: const Icon(Icons.factory),
                  color: Color.fromRGBO(0, 0, 0, 1),
                  iconSize: 45.0,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(" PT Prima Rajuli Sukses"),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Klik"),
                              Text("Tombol Dibawah Ini"),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  launchUrl(Uri.parse(
                                      'https://maps.app.goo.gl/MB1NSo1zh6swUPTZA'));
                                },
                                child: Text("Buka di Google Maps"),
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Tutup"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          RichAttributionWidget(
            attributions: [
              TextSourceAttribution(
                'KLIK UNTUK RUTE',
                onTap: () => launchUrl(Uri.parse(
                    'https://maps.app.goo.gl/nKCbxq5o33qhWBbs9')), // Membuka link di browser
              ),
            ],
          ),
        ],
      ),
      selectedIndex: 1, // Menyesuaikan index halaman pada navigasi
      controller: controller,
    );
  }
}
