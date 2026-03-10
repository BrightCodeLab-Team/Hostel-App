import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_basic/core/services/file_picker_services.dart';

class CreateReelScreen extends StatefulWidget {
  const CreateReelScreen({super.key});

  @override
  State<CreateReelScreen> createState() => _CreateReelScreenState();
}

class _CreateReelScreenState extends State<CreateReelScreen> {
  final FilePickerService filePickerService = FilePickerService();

  List<File> files = [];
  bool isMultiple = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: files.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 200,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: FileImage(files[index]),
                      ),
                    ),
                  );
                },
              ),
            ),

            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      if (isMultiple) {
                        final images = await filePickerService
                            .pickMultipleImagesFromGallery();

                        if (images.isNotEmpty) {
                          setState(() {
                            files.addAll(images);
                          });
                        }
                      } else {
                        final image = await filePickerService
                            .pickImageFromGallery();

                        if (image != null) {
                          setState(() {
                            files.add(image);
                          });
                        }
                      }
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange,
                      ),
                      child: const Center(child: Text("Pick Images")),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Checkbox(
                  value: isMultiple,
                  onChanged: (value) {
                    setState(() {
                      isMultiple = value ?? false;
                      print(isMultiple);
                      print(value);
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
