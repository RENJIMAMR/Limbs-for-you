/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsCaGen {
  const $AssetsCaGen();

  /// File path: assets/ca/lets-encrypt-r3.pem
  String get letsEncryptR3 => 'assets/ca/lets-encrypt-r3.pem';

  /// List of all assets
  List<String> get values => [letsEncryptR3];
}

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Barlow-Bold.ttf
  String get barlowBold => 'assets/fonts/Barlow-Bold.ttf';

  /// File path: assets/fonts/Barlow-Light.ttf
  String get barlowLight => 'assets/fonts/Barlow-Light.ttf';

  /// File path: assets/fonts/Barlow-Medium.ttf
  String get barlowMedium => 'assets/fonts/Barlow-Medium.ttf';

  /// File path: assets/fonts/Barlow-Regular.ttf
  String get barlowRegular => 'assets/fonts/Barlow-Regular.ttf';

  /// File path: assets/fonts/Barlow-SemiBold.ttf
  String get barlowSemiBold => 'assets/fonts/Barlow-SemiBold.ttf';

  /// List of all assets
  List<String> get values =>
      [barlowBold, barlowLight, barlowMedium, barlowRegular, barlowSemiBold];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/apps.svg
  String get apps => 'assets/images/apps.svg';

  /// File path: assets/images/background_image_LFY.jpg
  AssetGenImage get backgroundImageLFY =>
      const AssetGenImage('assets/images/background_image_LFY.jpg');

  /// File path: assets/images/bookmark-slash.svg
  String get bookmarkSlash => 'assets/images/bookmark-slash.svg';

  /// File path: assets/images/bookmark.svg
  String get bookmark => 'assets/images/bookmark.svg';

  /// File path: assets/images/company1.jpg
  AssetGenImage get company1 =>
      const AssetGenImage('assets/images/company1.jpg');

  /// File path: assets/images/company2.jpg
  AssetGenImage get company2 =>
      const AssetGenImage('assets/images/company2.jpg');

  /// File path: assets/images/company3.jpg
  AssetGenImage get company3 =>
      const AssetGenImage('assets/images/company3.jpg');

  /// File path: assets/images/company3assure.jpg
  AssetGenImage get company3assure =>
      const AssetGenImage('assets/images/company3assure.jpg');

  /// File path: assets/images/company4Ossur.jpg
  AssetGenImage get company4Ossur =>
      const AssetGenImage('assets/images/company4Ossur.jpg');

  /// File path: assets/images/company5.jpg
  AssetGenImage get company5 =>
      const AssetGenImage('assets/images/company5.jpg');

  /// File path: assets/images/company6.jpg
  AssetGenImage get company6 =>
      const AssetGenImage('assets/images/company6.jpg');

  /// File path: assets/images/company7.jpg
  AssetGenImage get company7 =>
      const AssetGenImage('assets/images/company7.jpg');

  /// File path: assets/images/company8.jpg
  AssetGenImage get company8 =>
      const AssetGenImage('assets/images/company8.jpg');

  /// File path: assets/images/hands-brain.svg
  String get handsBrain => 'assets/images/hands-brain.svg';

  /// File path: assets/images/house-window.svg
  String get houseWindow => 'assets/images/house-window.svg';

  /// File path: assets/images/limbs2.jpg
  AssetGenImage get limbs2 => const AssetGenImage('assets/images/limbs2.jpg');

  /// File path: assets/images/limbs3.jpg
  AssetGenImage get limbs3 => const AssetGenImage('assets/images/limbs3.jpg');

  /// File path: assets/images/limbs4.jpg
  AssetGenImage get limbs4 => const AssetGenImage('assets/images/limbs4.jpg');

  /// File path: assets/images/limbs8.jpg
  AssetGenImage get limbs8 => const AssetGenImage('assets/images/limbs8.jpg');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/radio-button.svg
  String get radioButton => 'assets/images/radio-button.svg';

  /// File path: assets/images/search.svg
  String get search => 'assets/images/search.svg';

  /// File path: assets/images/settings.svg
  String get settings => 'assets/images/settings.svg';

  /// File path: assets/images/sign-out-alt.svg
  String get signOutAlt => 'assets/images/sign-out-alt.svg';

  /// File path: assets/images/vision-target.svg
  String get visionTarget => 'assets/images/vision-target.svg';

  /// List of all assets
  List<dynamic> get values => [
        apps,
        backgroundImageLFY,
        bookmarkSlash,
        bookmark,
        company1,
        company2,
        company3,
        company3assure,
        company4Ossur,
        company5,
        company6,
        company7,
        company8,
        handsBrain,
        houseWindow,
        limbs2,
        limbs3,
        limbs4,
        limbs8,
        logo,
        radioButton,
        search,
        settings,
        signOutAlt,
        visionTarget
      ];
}

class Assets {
  Assets._();

  static const $AssetsCaGen ca = $AssetsCaGen();
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
