import 'package:flutter/material.dart';
import 'package:trust_ride/config/assets_string/app_png_files.dart';

class NoInterNetWidget extends StatelessWidget {
  const NoInterNetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(AppPngFiles.nonet),
            const Text(
              "Please Check Your Connection!",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
