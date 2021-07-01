import 'dart:ui';

import 'package:flutter/material.dart';

import 'app_colors.dart';

class FontAsset {
  static const path = "src/features/assets/fonts";
  static const fondue = "$path/fondue.ttf";
  static const proxNovaSoft = "$path/proxima-nova-soft-medium.otf";
  static const proxNovaBold = "$path/proxima-nova-extrabold.otf";
  static const magdelin = "$path/magdelin.ttf";
  static const habaneraRound = "$path/habanera-rounded-extrabold.ttf";
}

class AppText {
  static final titleHome = TextStyle(
    fontFamily: FontAsset.fondue,
    fontSize: 24,
    fontWeight: FontWeight.w900,
    color: AppColors.primary,
  );

  static final subtitleBold = TextStyle(
    fontFamily: FontAsset.fondue,
    fontSize: 22,
    fontWeight: FontWeight.w900,
    color: AppColors.primary,
  );

  static final detailRegular = TextStyle(
    fontFamily: FontAsset.proxNovaSoft,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.grey,
  );

  static final detailBold = TextStyle(
    fontFamily: FontAsset.fondue,
    fontSize: 18,
    fontWeight: FontWeight.w900,
    color: AppColors.primary,
  );

  static final buttonBoldPrimary = TextStyle(
    fontFamily: FontAsset.magdelin,
    fontSize: 16,
    fontWeight: FontWeight.w900,
    color: AppColors.primary,
  );

  static final buttonBoldDisabled = TextStyle(
    fontFamily: FontAsset.magdelin,
    fontSize: 16,
    fontWeight: FontWeight.w900,
    color: AppColors.disabled,
  );
}
