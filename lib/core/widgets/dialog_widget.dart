import 'package:flutter/material.dart';
import 'package:smart_shop/core/constants/colors_constants.dart';
import 'package:smart_shop/core/widgets/button_widget.dart';
import 'package:smart_shop/core/widgets/choise_card_radio_button_widget.dart';

class DialogManager {
  static void appAlertDialog(
      {required BuildContext context,
      required title,
      required List<Widget> alertBody,
      required String buttonText,
      required void Function() buttonOntap}) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(
          title,
          style: TextStyle(color: ColorConstant.instance.deepOrange),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: alertBody,
        ),
        actions: <Widget>[
          Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppTextButtonError(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  text: "Hayır"),
              AppTextButtonSuccess(onTap: buttonOntap, text: buttonText),
            ],
          )),
        ],
      ),
    );
  }

  static void appAlertCardDialog({
    required BuildContext context,
    List<Widget>? actions,
  }) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
          title: Text(
            "Lütfen seçim yapınız",
            style: TextStyle(color: ColorConstant.instance.deepOrange),
          ),
          content: const Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChoiseCardRadioButtonWidget(
                  groupValue: 1,
                  radioButtonValue: 1,
                  imageUrl: "assets/pharmacy.png",
                  subtitle: "Eczacı",
                ),
                ChoiseCardRadioButtonWidget(
                  groupValue: 1,
                  radioButtonValue: 2,
                  imageUrl: "assets/shop.png",
                  subtitle: "Depocu",
                ),
              ]),
          actions: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.close))
          ]),
    );
  }
}
