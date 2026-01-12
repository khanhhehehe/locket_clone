import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:locket_clone/common/configs/locators.dart';
import 'package:locket_clone/common/configs/navigation.dart';
import 'package:locket_clone/common/configs/pages.dart';
import 'package:locket_clone/presentation/home_page.dart';
import 'package:locket_clone/presentation/post_news.dart';
import 'package:locket_clone/presentation/profile_view.dart';

@lazySingleton
class AppRouters {
  final GoRouter goRouter;

  AppRouters() : goRouter = _router;

  static GoRouter get _router => GoRouter(
    routes: routerPages,
    navigatorKey: getIt<AppNavigation>().navigatorKey,
    errorBuilder: (context, state) {
      return Scaffold(body: Text('ERROR PAGE'));
    },
    initialLocation: '/',
  );

  static List<GoRoute> routerPages = {
    Pages.home: homePageRoute,
    Pages.profile: profilePageRoute,
    Pages.postNews: postNewsPageRoute,
  }.entries.map((entry) => entry.value).toList();
}
