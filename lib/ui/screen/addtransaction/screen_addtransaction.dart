import 'package:flutter/material.dart';

class ScreenAddtransaction extends StatelessWidget {
  static final String routeName = '/add';
  const ScreenAddtransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(child: Text('Add Transaction Screen')),
      ),
    );
  }
}
