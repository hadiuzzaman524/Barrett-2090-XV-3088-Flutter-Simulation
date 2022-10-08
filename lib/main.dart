import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:radio_set/configuration/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_set/presentation/cubits/barret_setup/cubit.dart';
import 'package:radio_set/presentation/cubits/xv_setup/cubit.dart';
import 'package:radio_set/presentation/cubits/xv_setup_device_two/cubit.dart';
import 'package:radio_set/presentation/feature/splash/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(const MyApp()));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => XvSetupCubit()),
        BlocProvider(create: (ctx) => XvSetupDeviceTwoCubit()),
        BlocProvider(create: (ctx) => BarretSetupCubit()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: AppColors.primaryColor,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
