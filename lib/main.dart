import 'package:detector/features/mars_rover/blocs/grid_cubit/grid_cubit.dart';
import 'package:detector/features/mars_rover/blocs/mars_rover_cubit/mars_rover_cubit.dart';
import 'package:detector/features/mars_rover/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]).then((value) => runApp(MultiBlocProvider(
        providers: [
          BlocProvider<MarsRoverCubit>(
            create: (context) => MarsRoverCubit(),
          ),
          BlocProvider<GridCubit>(
            create: (context) => GridCubit(),
          ),
        ],
        child: MaterialApp(
            title: 'Mars Rover',
            theme: ThemeData(
              fontFamily: 'DIGI',
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.green,
              ),
              useMaterial3: true,
            ),
            home: const HomeScreen()),
      )));
}
