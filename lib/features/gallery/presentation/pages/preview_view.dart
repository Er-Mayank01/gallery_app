import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:gallery_app/core/theme/app_theme.dart';
import 'package:gallery_app/features/gallery/data/model/pixbay_image_model.dart';
import '../../../../core/widgets/custom_app_bar.dart';

@RoutePage()
class PreviewView extends StatelessWidget {
  final PixabayImage image;
  const PreviewView({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
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
                      imageUrl: image.imageUrl,
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
                            Text('${image.likes}',
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
                            Text('${image.views}',
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
