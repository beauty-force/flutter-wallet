import 'package:flutter/material.dart';

import '../../utils/theme.dart';

class CustomHomeServices extends StatelessWidget {
  final String iconUrl;
  final String title;
  final VoidCallback? onTap;

  const CustomHomeServices({
    Key? key,
    required this.iconUrl,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.circular(70),
            ),
            child: Center(
              child: Image.asset(
                iconUrl,
                width: 26,
                color: whiteColor,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: whiteTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
