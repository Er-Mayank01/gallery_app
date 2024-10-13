import 'package:flutter/material.dart';
import 'package:gallery_app/features/gallery/presentation/pages/gallery_view.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pixabay Gallery',
      home: GalleryView(),
    );
  }
}
