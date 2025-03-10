import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:smart_shop/core/constants/colors_constants.dart';
import 'package:smart_shop/core/constants/routers/router_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Box personInfo;
  bool isSaved = false;

  @override
  void initState() {
    super.initState();
    _initializeHive();
  }

  // Hive kutusunu aç ve ilk değeri ata
  Future<void> _initializeHive() async {
    personInfo = await Hive.openBox('PersonInfo');

    // "isSaved" anahtarı yoksa, ilk değer olarak false ata
    if (!personInfo.containsKey('isSaved')) {
      await personInfo.put('isSaved', false);
    }

    setState(() {
      isSaved = personInfo.get('isSaved', defaultValue: false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Smart Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: ColorConstant.instance.blueAccent,
          foregroundColor: ColorConstant.instance.white,
          elevation: 4,
          centerTitle: true,
          titleTextStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
          iconTheme: IconThemeData(
            color: ColorConstant.instance.white,
            size: 28,
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
      ),
      routerConfig: appRoutes(isSavedUser: isSaved),
    );
  }
}
