import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:locket_clone/common/configs/pages.dart';

final profilePageRoute = GoRoute(
  path: Pages.home,
  builder: (context, GoRouterState state) => const ProfileView(),
);

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("PROFILE VIEW"));
  }
}
