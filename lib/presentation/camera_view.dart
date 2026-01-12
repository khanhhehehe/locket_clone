import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:locket_clone/common/configs/locators.dart';
import 'package:locket_clone/common/configs/navigation.dart';
import 'package:locket_clone/common/configs/pages.dart';
import 'package:locket_clone/common/utils/dimens.dart';
import 'package:locket_clone/common/utils/spacing_unit.dart';
import 'package:locket_clone/gen/assets.gen.dart';
import 'package:locket_clone/main.dart';
import 'package:locket_clone/presentation/widgets/take_picture_view.dart';

class CameraView extends StatefulWidget {
  const CameraView({super.key, required this.controller});
  final CameraController controller;

  @override
  State<CameraView> createState() => _CameraViewState();
}

class _CameraViewState extends State<CameraView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                _appBar(),
                Expanded(
                  child: PageView(
                    children: [
                      _verticalPageView([
                        TakePicture(controller: widget.controller),
                        _imageStoryView(''),
                        _imageStoryView(''),
                      ]),
                    ],
                  ),
                ),
                // Your additional column widgets go here
                // For example:
                // Text('Additional Widget'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _appBar() => Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: DimensionApp.horizontalPadding * 0.8,
      vertical: DimensionApp.verticalPadding * 0.2,
    ),
    child: AppBar(
      leadingWidth: 55,
      backgroundColor: Colors.transparent,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          height: SpacingUnit.x10,
          width: SpacingUnit.x10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.red,
          ),
        ),
      ),
      title: GestureDetector(
        onTap: () {},
        // => showAppModalBottomSheet(
        //   context: context,
        //   child: const FriendBottomSheet(),
        // ),
        child: Container(
          width: SpacingUnit.x30,
          height: SpacingUnit.x12_5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(DimensionApp.borderRadius * 40),
            color: Colors.grey.withValues(alpha: 0.3),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.images.iconUsers,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
                width: SpacingUnit.x7,
                height: SpacingUnit.x7,
              ),
              const SizedBox(width: 8),
              const Text(
                "9 Friends",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  fontFamily: '',
                ),
              ),
            ],
          ),
        ),
      ),
      centerTitle: true,
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(DimensionApp.verticalPadding * 0.9),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                DimensionApp.borderRadius * 5,
              ),
              color: Colors.grey.withValues(alpha: 0.3),
            ),
            child: SvgPicture.asset(
              Assets.images.iconChat,
              width: SpacingUnit.x8,
              height: SpacingUnit.x8,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
        ),
      ],
    ),
  );

  Widget _verticalPageView(List<Widget> child) {
    return PageView.builder(
      onPageChanged: (index) {
        if (index == 2) {
          print("x");
          _getAllImages();
        }
      },
      scrollDirection: Axis.vertical,
      itemCount: child.length,
      itemBuilder: (context, index) {
        return child[index];
      },
    );
  }

  Widget _imageStoryView(String url) {
    return Column(
      children: [
        Spacer(),
        Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).width,
          padding: const EdgeInsets.all(SpacingUnit.x0_25),
          color: Colors.red,
          // child: ClipRRect(
          //   borderRadius: BorderRadius.circular(40),
          //   child: Image.network(url, fit: BoxFit.fill),
          // ),
        ),
        Spacer(),
        Container(height: 40, color: Colors.amber),
        Spacer(),
      ],
    );
  }

  Future<void> _getAllImages() async {
    try {
      final response = await supabase.from('Image').select();
      print(response);
    } catch (e) {
      print(e);
    }

    // if (response.error != null) {
    //   print('Error: ${response.error!.message}');
    // } else {
    //   final List data = response.data;
    //   print('Images: $data');
    // }
  }
}
