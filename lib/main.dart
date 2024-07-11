import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const count1 = 100;
    final count2 = useState(200);

    return Scaffold(
        body: Column(
      children: [
        const Text('static count : $count1'),
        Text('dynamic count : ${count2.value}'),
        ElevatedButton(
          onPressed: () {
            count2.value++;
          },
          child: const Text('Increment'),
        ),
      ],
    ));
  }
}
