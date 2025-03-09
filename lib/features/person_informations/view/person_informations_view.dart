import 'package:flutter/material.dart';

class PersonInformationsView extends StatefulWidget {
  const PersonInformationsView({super.key});

  @override
  State<PersonInformationsView> createState() => _PersonInformationsViewState();
}

class _PersonInformationsViewState extends State<PersonInformationsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kullanıcı Bilgileri'),
      ),
    );
  }
}
