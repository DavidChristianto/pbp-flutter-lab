import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/data.dart';
import 'package:counter_7/drawer.dart';

void main() {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: true,
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home:MyHomePage()
    );
  }
}
final counterStateProvider = StateProvider<int>((ref) {
  return 0;
});

final counterStateProvider2 = StateProvider<String>((ref) {
  return 'EVEN';
});
final counterStateProvider3 = StateProvider<Color>((ref) {
  return Colors.red;
});

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var value = ref.watch(counterStateProvider);
    var even = ref.watch(counterStateProvider2);
    var warna = ref.watch(counterStateProvider3);
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter Program'),
        ),
        drawer: drawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '$even',
                style:  TextStyle(color: warna),
              ),
              Text(
                '$value',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),

        floatingActionButton: Padding(
          padding: EdgeInsets.only(left: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Visibility(
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                visible: value > 0,
                child: FloatingActionButton(
                  backgroundColor: Colors.blue,
                  // access the provider via ref.read(), then increment its state.
                  onPressed: () => {
                    ref.read(counterStateProvider.state).state--,
                    if (ref.read(counterStateProvider.state).state % 2 == 0){
                      ref.read(counterStateProvider2.state).state = 'EVEN',
                      ref.read(counterStateProvider3.state).state = Colors.red
                    }
                    else{
                      ref.read(counterStateProvider2.state).state = 'ODD',
                      ref.read(counterStateProvider3.state).state = Colors.blue
                    }
                  },
                  child: Icon(Icons.remove),
                ),
              ),

              Expanded(child: Container()),
              FloatingActionButton(
                // access the provider via ref.read(), then increment its state.
                onPressed: () => {
                  ref.read(counterStateProvider.state).state++,
                  if (ref.read(counterStateProvider.state).state % 2 == 0){
                    ref.read(counterStateProvider2.state).state = 'EVEN',
                    ref.read(counterStateProvider3.state).state = Colors.red
                  }
                  else{
                    ref.read(counterStateProvider2.state).state = 'ODD',
                    ref.read(counterStateProvider3.state).state = Colors.blue
                  }
                },
                child: Icon(Icons.add),
              ),
            ],
          ),
        )

    );
  }
}