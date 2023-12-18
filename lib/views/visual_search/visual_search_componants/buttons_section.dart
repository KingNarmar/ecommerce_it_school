import 'dart:io';

import 'package:ecommerce_it_school/shared/methods/methods.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../shared/componants/custom_button.dart';

class ButtonsSection extends StatefulWidget {
  const ButtonsSection({
    super.key,
  });

  @override
  State<ButtonsSection> createState() => _ButtonsSectionState();
}

class _ButtonsSectionState extends State<ButtonsSection> {
  File? image;
  ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          child: "TAKE A PHOTO",
          onTap: () async {
            final XFile? file =
                await picker.pickImage(source: ImageSource.camera);
            image = File(file!.path);
          },
          height: mediaHeight(context, 0.0591133),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.019704433,
        ),
        CustomButton(
          child: "UPLOAD AN IMAGE",
          color: Colors.transparent,
          side: const BorderSide(color: Colors.white),
          onTap: () async {
            final XFile? file =
                await picker.pickImage(source: ImageSource.gallery);
            image = File(file!.path);
          },
          height: mediaHeight(context, 0.0591133),
        ),
      ],
    );
  }
}
