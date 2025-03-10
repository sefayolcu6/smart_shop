import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smart_shop/features/introduction/viewmodel/introduction_state.dart';

class IntroductionCubit extends Cubit<IntroductionState> {
  IntroductionCubit() : super(IntroductionInitial());

  TextEditingController nameController = TextEditingController();

  late Box personInfo;

  Future<void> saveNameInHive() async {
    try {
      emit(IntroductionLoading());

      // Hive kutusunu açıyoruz. Eğer açılmadıysa, açıyoruz.
      personInfo = await Hive.openBox('PersonInfo');

      // nameController'dan alınan ismi kutuya ekliyoruz.
      if (nameController.text.isNotEmpty) {
        await personInfo.put("name", nameController.text);
        emit(IntroductionSuccess(personInfo.get("name")));
      } else {
        emit(IntroductionError(errorMessage: "Name cannot be empty"));
      }
    } catch (e) {
      emit(IntroductionError(errorMessage: "An error occurred: $e"));
    }
  }

  Future<String> getNameFromHive() async {
    try {
      // Hive kutusunu açıyoruz.
      personInfo = await Hive.openBox('PersonInfo');

      // Eğer "name" anahtarı var ise, ismi döndürüyoruz.
      String name = personInfo.get("name");
      return name;
    } catch (e) {
      emit(IntroductionError(errorMessage: "Failed to load name: $e"));
      return "Error";
    }
  }

  //clear box
  Future<void> clearBox() async {
    await personInfo.clear();
  }
}
