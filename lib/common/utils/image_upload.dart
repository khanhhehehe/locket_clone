import 'dart:convert';

import 'package:http/http.dart' as http;

Future<String?> uploadImageWebToCloud(String filePath) async {
  const apiKey = String.fromEnvironment('API_KEY_IMAGE_CLOUD');
  const folder = String.fromEnvironment('FOLDER_IMAGE');
  const uploadPreset = String.fromEnvironment('UPLOAD_PRESET');
  final uri = Uri.parse('https://api.cloudinary.com/v1_1/$apiKey/image/upload');

  final request =
      http.MultipartRequest('POST', uri)
        ..fields['upload_preset'] = uploadPreset
        ..fields['folder'] = folder
        ..files.add(await http.MultipartFile.fromPath('file', filePath));

  final response = await request.send();
  final responseData = await http.Response.fromStream(response);

  if (response.statusCode == 200) {
    final data = jsonDecode(responseData.body);
    // URL ảnh Cloudinary
    return data['secure_url'];
  } else {
    final error = responseData.body;
    print('Upload failed: $error');
    return null;
  }
}
