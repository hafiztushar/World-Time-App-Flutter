import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    //simulate getting data
    String name = await Future.delayed(Duration(seconds: 3), () {
      return 'youshi';
    });
    int age = await Future.delayed(Duration(seconds: 3), () {
      return 10;
    });

    print('$name - $age');
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text('Choose your location'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
