import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_care/core/helpers/app_constants.dart';

import '../cubit/language/language_cubit.dart';

String changeLinkLanguage({
  required String name,
  required BuildContext context,
}) {
  LanguageCubit cubit = context.read<LanguageCubit>();
  if (cubit.locale == "ar") {
    switch (name) {
      case AppConstants.baseLink:
        return name;
      case AppConstants.shop:
        return "${AppConstants.baseLink}متجر-ون-كير/";
      case AppConstants.ai:
        return "${AppConstants.baseLink}اعرفى-بشرتك/";
      case AppConstants.myAccount:
        return "${AppConstants.baseLink}$name/";
      case AppConstants.cart:
        return "${AppConstants.baseLink}$name/";
      case AppConstants.offers:
        return "${AppConstants.baseLink}ar/عروض-و-خصومات/";
      default:
        return name;
    }
  } else {
    switch (name) {
      case AppConstants.baseLink:
        return "${AppConstants.baseLink}en/";
      case AppConstants.shop:
        return "${AppConstants.baseLink}en/shop/";
      case AppConstants.ai:
        return "${AppConstants.baseLink}en/skin-ai/";
      case AppConstants.myAccount:
        return "${AppConstants.baseLink}en/$name/";
      case AppConstants.offers:
        return "${AppConstants.baseLink}$name/";
      case AppConstants.cart:
        return "${AppConstants.baseLink}en/$name/";
      default:
        return name;
    }
  }
}
