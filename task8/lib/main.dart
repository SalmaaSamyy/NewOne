import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task8/counter.dart';
import 'package:task8/cubits/cubit/changeSelectedValue/change_selected_value_cubit.dart';
import 'package:task8/cubits/cubit/counter_cubit.dart';
import 'package:task8/cubits/cubit/replaceUI/replace_ui_cubit.dart';
import 'package:task8/cubits/cubit/shawHidePass/show_hide_password_cubit.dart';
import 'package:task8/taskk8.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterCubit>(
        create: (BuildContext context) => CounterCubit(),
        ),
        BlocProvider<ChangeSelectedValueCubit>(
        create: (BuildContext context) => ChangeSelectedValueCubit(),
        ),
        BlocProvider<ShowHidePasswordCubit>(
        create: (BuildContext context) => ShowHidePasswordCubit(),
        ),
        BlocProvider<ReplaceUiCubit>(
        create: (BuildContext context) => ReplaceUiCubit(),
        ),
      ],
      
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Task8(),
        // const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,

//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
