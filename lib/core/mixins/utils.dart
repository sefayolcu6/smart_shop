import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

mixin Utils {
  double screenHeigth(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  onlyDateFormat({required DateTime dateTime}) {
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formatted = formatter.format(dateTime);
    return formatted;
  }

  onlyDateFormatForString({required String dateString}) {
    DateTime dateTime = DateTime.parse(dateString);

    final DateFormat formatter = DateFormat('yyyy-MM-dd');

    final String formatted = formatter.format(dateTime);

    return formatted;
  }
}
