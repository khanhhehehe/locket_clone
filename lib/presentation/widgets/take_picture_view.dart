import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locket_clone/common/configs/locators.dart';
import 'package:locket_clone/common/configs/navigation.dart';
import 'package:locket_clone/common/configs/pages.dart';
import 'package:locket_clone/common/utils/spacing_unit.dart';
import 'package:locket_clone/gen/assets.gen.dart';
import 'package:locket_clone/presentation/widgets/preview_camera.dart';
import 'package:permission_handler/permission_handler.dart';

class TakePicture extends StatefulWidget {
  final CameraController controller;
  const TakePicture({super.key, required this.controller});

  @override
  State<TakePicture> createState() => _TakePictureState();
}

class _TakePictureState extends State<TakePicture> with WidgetsBindingObserver {
  late PermissionStatus permissionCameraStatus;
  Future<void> _takePicture() async {
    if (permissionCameraStatus.isGranted) {
      if (!widget.controller.value.isInitialized) {
        return;
      }
      if (widget.controller.value.isTakingPicture) {
        return;
      }
      try {
        await widget.controller.setFlashMode(FlashMode.off);
        XFile file = await widget.controller.takePicture();
        getIt<AppNavigation>().push(
          page: Pages.postNews,
          paramsQuerry: {"file": file.path},
        );
      } on CameraException catch (e) {
        debugPrint("ERROR: $e");
      }
    } else {
      _showPermissionDialog();
    }
  }

  Future<void> _checkPermission() async {
    permissionCameraStatus = await Permission.camera.status;
  }

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    _checkPermission();
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed &&
        !permissionCameraStatus.isGranted) {
      _checkPermission();
      getIt<AppNavigation>().push(page: Pages.home);
    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        CameraPreviewHome(controller: widget.controller),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                Assets.images.image,
                width: SpacingUnit.x8,
                height: SpacingUnit.x8,
              ),
            ),
            IconButton(
              onPressed: () => _takePicture(),
              icon: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.yellowAccent),
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 0),
                      blurRadius: 13,
                      spreadRadius: 0,
                      color: Colors.lightBlue.withValues(alpha: 0.5),
                    ),
                  ],
                  color: Colors.lightBlueAccent,
                ),
                padding: const EdgeInsets.all(2),
                child: const Icon(
                  Icons.circle,
                  color: Colors.white,
                  size: SpacingUnit.x20,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                Assets.images.reload,
                width: SpacingUnit.x8,
                height: SpacingUnit.x8,
              ),
            ),
          ],
        ),
        const Spacer(),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(SpacingUnit.x2),
              height: SpacingUnit.x12_5,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(SpacingUnit.x2),
                    child: Image.asset(Assets.images.sunny.path),
                  ),
                  const SizedBox(width: SpacingUnit.x2),
                  Text(
                    'History',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SvgPicture.asset(Assets.images.arrowDown),
          ],
        ),
        const Spacer(),
      ],
    );
  }

  Future<void> _showPermissionDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Ask permission'),
          content: Text('You Need To Grant Camera Permissions'),
          actions: <Widget>[
            TextButton(
              child: Text('Approve'),
              onPressed: () {
                openAppSettings();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
