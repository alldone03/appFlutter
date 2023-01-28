import 'package:flutter/material.dart';
import 'package:route_app/model/screenargs.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    String? title;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                const Text("Home page 1"),
                TextFormField(
                  initialValue: '',
                  maxLength: 20,
                  decoration: const InputDecoration(
                    labelText: 'title',
                    labelStyle: TextStyle(
                      color: Colors.blueGrey,
                    ),
                    suffixIcon: Icon(
                      Icons.email,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey,
                      ),
                    ),
                    helperText: 'Title',
                  ),
                  onChanged: (value) {
                    title = value;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/dashboard2',
                        arguments: ScreenArguments(
                            title!, 'aku pasti bisa passing data'));
                  },
                  child: const Text("switch to second view"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
