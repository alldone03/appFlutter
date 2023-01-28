import 'package:flutter/material.dart';
import 'package:route_app/model/screenargs.dart';

class homePage2 extends StatelessWidget {
  const homePage2({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard 2"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                Text(args.title),
                Text(args.message),
                Text("home Page 2"),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Go Back"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
