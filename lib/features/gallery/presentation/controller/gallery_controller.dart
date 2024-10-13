import 'package:gallery_app/features/gallery/data/model/pixbay_image_model.dart';
import 'package:gallery_app/features/gallery/data/repository/pixbay_repository.dart';
import 'package:get/get.dart';

class GalleryController extends GetxController {
  var images = <PixabayImage>[].obs;
  var isLoading = false.obs;
  var page = 1;

  final PixabayRepository _repository = PixabayRepository();

  @override
  void onInit() {
    fetchImages();
    super.onInit();
  }

  void fetchImages() async {
    try {
      isLoading(true);
      var newImages = await _repository.fetchImages(page);
      images.addAll(newImages);
      page++;
    } finally {
      isLoading(false);
    }
  }

  void loadMoreImages() {
    fetchImages();
  }
}
