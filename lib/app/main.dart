import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funrize/app/theme.dart';
import 'package:funrize/features/home/controller/emotions_cubit.dart';
import 'package:funrize/features/home/domain/emotion/emotion.dart';
import 'package:get_it/get_it.dart';
import 'package:funrize/app/config/init_di.dart';
import 'package:funrize/app/config/init_hive.dart';
import 'package:funrize/app/router/router.dart';
import 'package:hive_flutter/hive_flutter.dart';

late Box<Emotion> box;
final di = GetIt.instance;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDI();
  await initHive();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  runApp(BlocProvider(
    create: (context) => EmotionsCubit(),
    child: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          theme: theme,
          routerConfig: _appRouter.config(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
