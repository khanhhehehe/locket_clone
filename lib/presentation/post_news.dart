import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gal/gal.dart';
import 'package:go_router/go_router.dart';
import 'package:locket_clone/common/configs/locators.dart';
import 'package:locket_clone/common/configs/navigation.dart';
import 'package:locket_clone/common/configs/pages.dart';
import 'package:locket_clone/common/utils/spacing_unit.dart';
import 'package:locket_clone/gen/assets.gen.dart';
import 'package:locket_clone/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final postNewsPageRoute = GoRoute(
  path: Pages.postNews,
  builder: (context, GoRouterState state) {
    final query = state.uri.queryParameters;
    final filePath = query['file'];
    return PostImage(filePath: filePath ?? '');
  },
);

class PostImage extends StatefulWidget {
  final String filePath;
  const PostImage({super.key, this.filePath = ''});

  @override
  State<PostImage> createState() => _PostImageState();
}

class _PostImageState extends State<PostImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          AppBar(
            title: Text('Send To', style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.transparent,
            leading: const SizedBox(),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () => _saveImage(widget.filePath),
                icon: const Icon(
                  Icons.file_download_outlined,
                  size: SpacingUnit.x8,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).width,
            padding: const EdgeInsets.all(SpacingUnit.x0_25),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.file(File(widget.filePath), fit: BoxFit.fill),
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () => getIt<AppNavigation>().pop(),
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                  size: SpacingUnit.x10,
                ),
              ),
              IconButton(
                onPressed: () => _upImage(widget.filePath),
                icon: Container(
                  width: SpacingUnit.x22,
                  height: SpacingUnit.x22,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  padding: const EdgeInsets.all(SpacingUnit.x2_5),
                  child: SvgPicture.asset(
                    Assets.images.send,
                    width: SpacingUnit.x20,
                    height: SpacingUnit.x20,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  Assets.images.stars,
                  width: SpacingUnit.x8,
                  height: SpacingUnit.x8,
                ),
              ),
            ],
          ),
          const Spacer(),
          SizedBox(
            height: SpacingUnit.x10,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: SpacingUnit.x2),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  _itemUser(Assets.images.sunny.path),
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(width: SpacingUnit.x2),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _itemUser(String image) {
    return Container(
      width: SpacingUnit.x10,
      height: SpacingUnit.x10,
      decoration: BoxDecoration(
        border: Border.all(width: SpacingUnit.x0_5, color: Colors.yellowAccent),
        borderRadius: BorderRadius.circular(SpacingUnit.x25),
      ),
      padding: const EdgeInsets.all(SpacingUnit.x0_5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(SpacingUnit.x25),
        child: Image.asset(image),
      ),
    );
  }

  Future<void> _saveImage(String path) async {
    try {
      await Gal.putImage(path);
    } catch (e) {
      return;
    }
  }

  Future<void> _upImage(String filePath) async {
    final fileName = filePath.split('/').last;
    try {
      final timeIsoNow = DateTime.now().toIso8601String();
      final response = await supabase.storage
          .from('images_locket')
          .upload('uploads/$fileName$timeIsoNow', File(filePath));
      final publicUrl = supabase.storage
          .from('images_locket')
          .getPublicUrl('uploads/$fileName$timeIsoNow');
      final insertResponse = await supabase.from('Image').insert({
        'url': publicUrl,
        'created_at': timeIsoNow,
        'user_id': 'khanhhehehe',
      });
      print(insertResponse);
      getIt<AppNavigation>().pop();
    } catch (e) {
      return;
    }
  }
}
