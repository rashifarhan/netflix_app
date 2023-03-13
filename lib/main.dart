import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/application/downloads/downloads_bloc.dart';
import 'package:netflix_app/domain/core/di/injectable.dart';
import 'package:netflix_app/presentaion/main_page/screen_main.dart';

import 'core/colors/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<DownloadsBloc>(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
            iconTheme: const IconThemeData(
              color: white,
            ),
            scaffoldBackgroundColor: black,
            fontFamily: GoogleFonts.montserrat().fontFamily,
            textTheme: TextTheme(
              bodyLarge: TextStyle(color: white),
              bodyMedium: TextStyle(color: white),
              bodySmall: TextStyle(color: white),
            )),
        home: ScreenMainPage(),
      ),
    );
  }
}
