import 'package:flutter/material.dart';
import 'presentation/pages/home_page.dart';
import 'presentation/pages/maps_page.dart';
import 'presentation/pages/data_desa_page.dart';
import 'core/navigation/navigation_service.dart';
import 'presentation/controllers/home_controller.dart';
import 'domain/usecases/navigate_to_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize services and controllers
    final navigationService = NavigationService();
    final navigateToPageUseCase = NavigateToPageUseCase(navigationService);
    final homeController = HomeController(navigateToPageUseCase);

    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey, // Use global navigator key
      title: 'SIG Desa',
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(homeController),
        '/maps': (context) => MapsPage(homeController),
        '/data_desa': (context) => DataDesaPage(homeController),
      },
    );
  }
}
