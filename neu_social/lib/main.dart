import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neu_social/index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Portrait Mode
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiBlocProvider(
      providers: [
        BlocProvider<OnboardCubit>(
            create: (BuildContext context) => OnboardCubit()),
      ],
      child: MaterialApp(
        title: 'NEU Social Application',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Montserrat',
        ),
        home: Splash(),
      ),
    );
  }
}
