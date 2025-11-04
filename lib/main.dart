import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:one_care/core/helpers/app_constants.dart';
import 'package:one_care/core/helpers/bloc_observer.dart';
import 'package:one_care/core/helpers/shared_pref_helper.dart';
import 'package:one_care/core/routes/app_router.dart';

import 'core/cubit/language/language_cubit.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  Bloc.observer = GradBlocObserver();
  bool isFirstLogin = await SharedPrefHelper.getBool(AppConstants.isFristLogin);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
    ),
  );

  runApp(
    //  DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder:

    //     (contexr)=>  const MyApp()

    //  )
    MyApp(isFirstLogin: isFirstLogin),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.isFirstLogin});
  final bool isFirstLogin;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (_, child) {
        return BlocProvider(
          create: (context) => LanguageCubit(),
          child: BlocBuilder<LanguageCubit, LanguageState>(
            builder: (context, state) {
              LanguageCubit cubit = context.read<LanguageCubit>();
              return MaterialApp.router(
                theme: ThemeData.light().copyWith(
                  textTheme: ThemeData.light().textTheme.apply(
                    fontFamily: AppConstants.tajawalFont,
                  ),
                ),
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                locale: Locale(cubit.locale),
                debugShowCheckedModeBanner: false,
                routerConfig: AppRouter.getRouter(
                  cubit.isFirstLogin ?? isFirstLogin,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
