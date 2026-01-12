import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:locket_clone/common/utils/spacing_unit.dart';

class CameraPreviewHome extends StatelessWidget {
  final CameraController controller;
  const CameraPreviewHome({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.all(SpacingUnit.x0_25),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: CameraPreview(controller),
      ),
    );
  }
}
