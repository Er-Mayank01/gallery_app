import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:gallery_app/core/theme/app_theme.dart';
import 'package:get/get.dart';
import '../../../../core/widgets/custom_app_bar.dart';

class PreviewView extends StatelessWidget {
  const PreviewView({super.key});

  @override
  Widget build(BuildContext context) {
    final String imageUrl = Get.arguments['imageUrl'];
    final int likes = Get.arguments['likes'];
    final int views = Get.arguments['views'];

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: const CustomAppBar(title: 'Image Preview'),
      body: Container(
        decoration: AppTheme.pageBackgroundGradient(),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: CachedNetworkImage(
                      imageUrl: imageUrl,
                      width: _getResponsiveSquareSize(screenWidth),
                      height: _getResponsiveSquareSize(screenWidth),
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error, color: Colors.red),
                    ),
                  ),
                  Container(
                    width: _getResponsiveSquareSize(screenWidth),
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.thumb_up,
                                size: 18,
                                color: Colors
                                    .deepOrangeAccent), // Same color as GalleryView
                            const SizedBox(width: 6),
                            Text('$likes',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87)),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.visibility,
                                size: 18,
                                color: Colors
                                    .deepOrangeAccent), // Same color as GalleryView
                            const SizedBox(width: 6),
                            Text('$views',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  double _getResponsiveSquareSize(double screenWidth) {
    if (screenWidth > 1200) {
      return 600;
    } else if (screenWidth > 800) {
      return 400;
    } else {
      return 300;
    }
  }
}
