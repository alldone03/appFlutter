import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class dashboardsharedpreferences extends StatefulWidget {
  const dashboardsharedpreferences({Key? key}) : super(key: key);

  @override
  State<dashboardsharedpreferences> createState() =>
      _dashboardsharedpreferencesState();
}

class _dashboardsharedpreferencesState
    extends State<dashboardsharedpreferences> {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  String datatext = "-";
  String dataform = "";

  Future<void> savedata() async {
    final SharedPreferences mypref = await _prefs;
    mypref.setString('name', dataform).then((value) => print(value));
  }

  void getdata() {
    _prefs.then((prefs) {
      print(prefs.getString('name'));
      datatext = prefs.getString('name') ?? '';
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard Shared preferences"),
        backgroundColor: Color(0xffD9ACF5),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextFormField(
                initialValue: '',
                maxLength: 20,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: "What's your name?",
                ),
                onChanged: (value) {
                  dataform = value;
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  savedata();
                },
                child: const Text("Save"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  getdata();
                },
                child: const Text("get data "),
              ),
              Text(datatext),
            ],
          ),
        ),
      ),
    );
  }
}
