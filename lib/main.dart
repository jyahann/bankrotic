import 'dart:async';

import 'package:bankrotic/logger/logger.dart';
import 'package:bankrotic/screens/records/cubit/records_cubit.dart';
import 'package:bankrotic/screens/records/records_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runZonedGuarded(() => runApp(const MyApp()), (
    Object error,
    StackTrace stack,
  ) {
    logger.handle(error, stack, 'Uncaught app exception');
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 820),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [BlocProvider(create: (_) => RecordsCubit()..init())],
          child: MaterialApp(
            title: 'Bankrotic',
            theme: ThemeData(
              scaffoldBackgroundColor: Color(0xFF272c3f),
              textTheme: TextTheme(
                bodyMedium: TextStyle(color: Colors.white),
                titleMedium: TextStyle(color: Colors.white),
              ),
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.deepPurple,
                primary: Color(0xFF08a693),
                primaryContainer: Color(0xFF3a4d5f),
                surface: Color(0xFFd2cdc6),
              ),
            ),
            home: const RecordsScreen(),
          ),
        );
      },
    );
  }
}
