import 'package:flutter/material.dart';

class BarPage extends StatefulWidget {
  const BarPage({Key? key}) : super(key: key);

  @override
  State<BarPage> createState() => _BarPageState();
}

class _BarPageState extends State<BarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        'this is bar page',
      ),
    );
  }
}
