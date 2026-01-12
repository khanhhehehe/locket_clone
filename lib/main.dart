import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:locket_clone/common/configs/locators.dart';
import 'package:locket_clone/presentation/main_view.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

late List<CameraDescription> cameras;
late SupabaseClient supabase;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const url = String.fromEnvironment('APP_URL_SUPABASE');
  const key = String.fromEnvironment('APP_KEY_SUPABASE');
  await Supabase.initialize(url: url, anonKey: key);
  supabase = Supabase.instance.client;
  configureDependencies();
  runApp(const MainView());
}
