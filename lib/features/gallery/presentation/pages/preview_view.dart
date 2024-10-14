import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PreviewView extends StatelessWidget {
  final String imageUrl;
  const PreviewView({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Image preview',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        backgroundColor: Colors.teal[700],
        centerTitle: true,
        elevation: 10,
      ),
      body: Center(
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          width: double.infinity,
          fit: BoxFit.cover,
          placeholder: (context, url) => const Center(
            child: SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(
                color: Colors.deepOrangeAccent,
                strokeWidth: 2,
              ),
            ),
          ),
          errorWidget: (context, url, error) =>
              const Icon(Icons.error, color: Colors.red),
        ),
      ),
    );
  }
}
