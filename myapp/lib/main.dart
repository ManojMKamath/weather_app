import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/bloc/weather_bloc.dart';

import 'package:myapp/pages/weather_search_page.dart';
//import 'cubit/weather_cubit.dart';
import 'model/weather_repository.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider(
        //create: (context) => WeatherCubit(FakeWeatherRepository()),
        create: (context) => WeatherBloc(FakeWeatherRepository()),
        child: WeatherSearchPage(),
      ),
    );
  }
}

// class MyChangeNotifier extends ChangeNotifier {
//   int field1;
//   String field2;
//
//   void changeState() {
//     field2 = 'New Value';
//     notifyListeners();
//   }
// }
//
// class MyState {
//   final int field1;
//   final String field2;
//
//   MyState(this.field1, this.field2);
// }
//
// class MyCubit extends Cubit<MyState> {
//   MyCubit() : super(MyState(0, 'Initial State'));
//
//   void changeState() {
//     emit(MyState(0,'New Value'));
//   }
// }
