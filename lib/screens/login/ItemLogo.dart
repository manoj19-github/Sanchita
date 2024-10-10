import 'package:flutter/material.dart';
import 'package:sanchita/common/color_extensions.dart';

class ItemLogo extends StatelessWidget {
  final String imageURL;
  final double  width;
  final double height;

  const ItemLogo({super.key,required this.imageURL,required this.width,required this.height});

  @override
  Widget build(BuildContext context) {
    return   Container(
      height:height,
      width:width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(imageURL), fit: BoxFit.cover),
          // borderRadius: BorderRadius.circular(30),
        ),
    );
  }
}