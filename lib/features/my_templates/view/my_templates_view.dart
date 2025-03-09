import 'package:flutter/material.dart';

class MyTemplatesView extends StatefulWidget {
  const MyTemplatesView({super.key});

  @override
  State<MyTemplatesView> createState() => _MyTemplatesViewState();
}

class _MyTemplatesViewState extends State<MyTemplatesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alışveriş Şablonlarım'),
      ),
    );
  }
}
