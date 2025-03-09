import 'package:flutter/material.dart';

class RecentPurchaseView extends StatefulWidget {
  const RecentPurchaseView({super.key});

  @override
  State<RecentPurchaseView> createState() => _RecentPurchaseViewState();
}

class _RecentPurchaseViewState extends State<RecentPurchaseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Geçmiş Alışverişlerim'),
      ),
    );
  }
}
