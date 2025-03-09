import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_shop/core/constants/routers/router_names.dart';
import 'package:smart_shop/features/app_settings/view/app_settings_view.dart';
import 'package:smart_shop/features/completed_purchases/view/completed_purchase_view.dart';
import 'package:smart_shop/features/dashboard/view/dashboard_view.dart';
import 'package:smart_shop/features/favorite_products/view/favorite_products_view.dart';
import 'package:smart_shop/features/my_expenses/view/my_expenses_view.dart';
import 'package:smart_shop/features/my_purchases/view/my_purchases_view.dart';
import 'package:smart_shop/features/my_purchases_notes/view/my_purchases_notes_view.dart';
import 'package:smart_shop/features/my_templates/view/my_templates_view.dart';
import 'package:smart_shop/features/new_purchase_list/view/new_purchase_list_view.dart';
import 'package:smart_shop/features/person_informations/view/person_informations_view.dart';
import 'package:smart_shop/features/recent_shops/view/recent_purchase_view.dart';
import 'package:smart_shop/features/waiting_purchases/view/waiting_purchases_view.dart';

final appRoutes = GoRouter(
  initialLocation: RouterNames.dashboard,
  routes: [
    GoRoute(
      name: 'home',
      path: RouterNames.dashboard,
      pageBuilder: (context, state) {
        return const MaterialPage(child: DashboardView());
      },
    ),
    GoRoute(
        path: RouterNames.appSettings,
        pageBuilder: (context, state) {
          return const MaterialPage(child: AppSettingsView());
        }),
    GoRoute(
        path: RouterNames.comletedPurchases,
        pageBuilder: (context, state) {
          return const MaterialPage(child: CompletedPurchaseView());
        }),
    GoRoute(
        path: RouterNames.favoriteProducts,
        pageBuilder: (context, state) {
          return const MaterialPage(child: FavoriteProductsView());
        }),
    GoRoute(
        path: RouterNames.myExpenses,
        pageBuilder: (context, state) {
          return const MaterialPage(child: MyExpensesView());
        }),
    GoRoute(
        path: RouterNames.myPurchases,
        pageBuilder: (context, state) {
          return const MaterialPage(child: MyPurchasesView());
        }),
    GoRoute(
        path: RouterNames.comletedPurchases,
        pageBuilder: (context, state) {
          return const MaterialPage(child: CompletedPurchaseView());
        }),
    GoRoute(
        path: RouterNames.myPurchasesNotes,
        pageBuilder: (context, state) {
          return const MaterialPage(child: MyPurchasesNotesView());
        }),
    GoRoute(
        path: RouterNames.myTemplates,
        pageBuilder: (context, state) {
          return const MaterialPage(child: MyTemplatesView());
        }),
    GoRoute(
        path: RouterNames.newPurchasesList,
        pageBuilder: (context, state) {
          return const MaterialPage(child: NewPurchaseListView());
        }),
    GoRoute(
        path: RouterNames.personInformation,
        pageBuilder: (context, state) {
          return const MaterialPage(child: PersonInformationsView());
        }),
    GoRoute(
        path: RouterNames.recentPurchases,
        pageBuilder: (context, state) {
          return const MaterialPage(child: RecentPurchaseView());
        }),
    GoRoute(
        path: RouterNames.waitingPurchases,
        pageBuilder: (context, state) {
          return const MaterialPage(child: WaitingPurchasesView());
        }),
  ],
);
