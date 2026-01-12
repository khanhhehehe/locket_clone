import 'dart:ui';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:locket_clone/common/utils/spacing_unit.dart';

class BackgroundHome extends StatelessWidget {
  final CameraController controller;
  const BackgroundHome({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          padding: const EdgeInsets.all(SpacingUnit.x0_25),
          child: CameraPreview(controller),
        ),

        BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: SpacingUnit.x5,
            sigmaY: SpacingUnit.x5,
          ),
          child: Container(color: Colors.black.withValues(alpha: 0.9)),
        ),
      ],
    );
  }
}
