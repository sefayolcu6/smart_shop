import 'package:flutter/material.dart';

class CompletedPurchaseView extends StatefulWidget {
  const CompletedPurchaseView({super.key});

  @override
  State<CompletedPurchaseView> createState() => _CompletedPurchaseViewState();
}

class _CompletedPurchaseViewState extends State<CompletedPurchaseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tamamlanan Alışverişler'),
      ),
    );
  }
}
