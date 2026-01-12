import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:locket_clone/common/configs/pages.dart';
import 'package:locket_clone/main.dart';
import 'package:locket_clone/presentation/camera_view.dart';
import 'package:locket_clone/presentation/message_view.dart';
import 'package:locket_clone/presentation/profile_view.dart';
import 'package:locket_clone/presentation/widgets/background_home.dart';

final homePageRoute = GoRoute(
  path: Pages.home,
  builder: (context, GoRouterState state) => const HomePageView(),
);

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView>
    with SingleTickerProviderStateMixin {
  CameraController? controller;
  PageController hPagerController = PageController(
    initialPage: 1,
    keepPage: true,
  );
  PageController vPagerController = PageController(keepPage: true);

  @override
  void initState() {
    super.initState();
    _initCamera();
  }

  Future<void> _initCamera() async {
    cameras = await availableCameras();
    controller = CameraController(cameras[0], ResolutionPreset.max);
    controller
        ?.initialize()
        .then((_) {
          if (!mounted) {
            return;
          }
          setState(() {});
        })
        .catchError((Object e) {
          if (e is CameraException) {
            switch (e.code) {
              case 'CameraAccessDenied':
                // Handle access errors here.
                // getIt<AppNavigation>().push(page: Pages.error);
                break;
              default:
                // Handle other errors here.
                //test122
                break;
            }
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (controller == null || !controller!.value.isInitialized)
          SizedBox()
        else ...[
          //release
          BackgroundHome(controller: controller!),
          PageView(
            controller: hPagerController,
            children: [
              // Tab Profile
              ProfileView(),
              // Tab Home
              CameraView(controller: controller!),
              // Tab Message
              MessageView(),
            ],
          ),
        ],
      ],
    );
  }
}
