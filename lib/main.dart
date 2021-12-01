import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location_tracking_app/blocs/application_blocs.dart';
import 'package:location_tracking_app/screens/homeScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ApplicationBloc(),
      child: const MaterialApp(
        title: 'Flutter Demo',
        home: HomeScreen(),
      ),
    );
  }
}
