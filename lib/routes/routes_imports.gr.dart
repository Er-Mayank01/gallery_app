// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:gallery_app/features/gallery/data/model/pixbay_image_model.dart'
    as _i5;
import 'package:gallery_app/features/gallery/presentation/pages/gallery_view.dart'
    as _i1;
import 'package:gallery_app/features/gallery/presentation/pages/preview_view.dart'
    as _i2;

/// generated route for
/// [_i1.GalleryView]
class GalleryViewRoute extends _i3.PageRouteInfo<void> {
  const GalleryViewRoute({List<_i3.PageRouteInfo>? children})
      : super(
          GalleryViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'GalleryViewRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.GalleryView();
    },
  );
}

/// generated route for
/// [_i2.PreviewView]
class PreviewViewRoute extends _i3.PageRouteInfo<PreviewViewRouteArgs> {
  PreviewViewRoute({
    _i4.Key? key,
    required _i5.PixabayImage image,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          PreviewViewRoute.name,
          args: PreviewViewRouteArgs(
            key: key,
            image: image,
          ),
          initialChildren: children,
        );

  static const String name = 'PreviewViewRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PreviewViewRouteArgs>();
      return _i2.PreviewView(
        key: args.key,
        image: args.image,
      );
    },
  );
}

class PreviewViewRouteArgs {
  const PreviewViewRouteArgs({
    this.key,
    required this.image,
  });

  final _i4.Key? key;

  final _i5.PixabayImage image;

  @override
  String toString() {
    return 'PreviewViewRouteArgs{key: $key, image: $image}';
  }
}
