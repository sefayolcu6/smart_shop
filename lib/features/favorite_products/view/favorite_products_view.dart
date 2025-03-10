import 'package:flutter/material.dart';

class FavoriteProductsView extends StatefulWidget {
  const FavoriteProductsView({super.key});

  @override
  State<FavoriteProductsView> createState() => _FavoriteProductsViewState();
}

class _FavoriteProductsViewState extends State<FavoriteProductsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favori Ürünler'),
      ),
    );
  }
}