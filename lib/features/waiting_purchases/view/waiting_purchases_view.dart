import 'package:flutter/material.dart';

class WaitingPurchasesView extends StatefulWidget {
  const WaitingPurchasesView({super.key});

  @override
  State<WaitingPurchasesView> createState() => _WaitingPurchasesViewState();
}

class _WaitingPurchasesViewState extends State<WaitingPurchasesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bekleyen Alışverişler'),
      ),
    );
  }
}
