import 'package:flutter/material.dart';

class MyPurchasesNotesView extends StatefulWidget {
  const MyPurchasesNotesView({super.key});

  @override
  State<MyPurchasesNotesView> createState() => _MyPurchasesNotesViewState();
}

class _MyPurchasesNotesViewState extends State<MyPurchasesNotesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alışveriş Notlarım'),
      ),
    );
  }
}
