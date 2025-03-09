import 'package:flutter/material.dart';
import 'package:smart_shop/core/constants/colors_constants.dart';

class AppNavigationRail extends StatefulWidget {
  final List<NavigationRailDestination> items;
  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;

  const AppNavigationRail({
    Key? key,
    required this.items,
    required this.selectedIndex,
    required this.onDestinationSelected,
  }) : super(key: key);

  @override
  _AppNavigationRailState createState() => _AppNavigationRailState();
}

class _AppNavigationRailState extends State<AppNavigationRail> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        NavigationRail(
          selectedIndex: widget.selectedIndex, // Seçili öğenin indexi
          onDestinationSelected: widget.onDestinationSelected,
          labelType: NavigationRailLabelType.all, // Etiketler her zaman görünür
          destinations: widget.items,
        ),
        appVerticalDivider(),
      ],
    );
  }

  Widget appVerticalDivider() {
    return  VerticalDivider(
      width: 1,
      thickness: 1,
      color: ColorConstant.instance.grey,
    );
  }
}
