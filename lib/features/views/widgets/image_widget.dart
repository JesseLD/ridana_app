// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  double? width;
  double? height;
  String? imagePath;
  ImageWidget({super.key, this.width, this.height, this.imagePath});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.imagePath != null && widget.imagePath!.isNotEmpty
        ? Container(
          width: widget.width ?? 80,
          height: widget.height ?? 80,
          decoration: BoxDecoration(
            // color: Colors.grey.withAlpha(100),
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(widget.imagePath!),
              fit: BoxFit.cover,
            ),
          ),
        )
        : Container(
          width: widget.width ?? 80,
          height: widget.height ?? 80,
          decoration: BoxDecoration(
            color: Colors.grey.withAlpha(100),
            borderRadius: BorderRadius.circular(8),
          ),
        );
  }
}
