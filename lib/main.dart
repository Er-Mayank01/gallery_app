import 'package:flutter/material.dart';
import 'package:gallery_app/core/theme/app_theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:gallery_app/features/gallery/presentation/pages/gallery_view.dart';
import 'package:gallery_app/features/gallery/presentation/pages/preview_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pixabay Gallery',
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const GalleryView()),
        GetPage(name: '/preview', page: () => const PreviewView()),
      ],
    );
  }
}
