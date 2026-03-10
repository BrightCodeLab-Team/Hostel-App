import 'dart:io';
import 'package:image_picker/image_picker.dart';

class FilePickerService {
  final ImagePicker _picker = ImagePicker();

  /// Pick single image from gallery with built-in compression
  Future<File?> pickImageFromGallery({int quality = 70}) async {
    final pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: quality,
    );
    return pickedFile != null ? File(pickedFile.path) : null;
  }

  /// Pick single image from camera with built-in compression
  Future<File?> pickImageFromCamera({int quality = 70}) async {
    final pickedFile = await _picker.pickImage(
      source: ImageSource.camera,
      imageQuality: quality,
    );
    return pickedFile != null ? File(pickedFile.path) : null;
  }

  /// Pick multiple images from gallery with built-in compression
  Future<List<File>> pickMultipleImagesFromGallery({int quality = 70}) async {
    final pickedFiles = await _picker.pickMultiImage(imageQuality: quality);

    return pickedFiles.map((xFile) => File(xFile.path)).toList();
  }
}
