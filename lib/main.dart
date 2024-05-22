import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    DevicePreview(
        enabled: !kReleaseMode,
        tools: const [...DevicePreview.defaultTools],
        builder: (contex) => GetMaterialApp(
              title: "Application",
              // initialRoute: AppPages.INITIAL,
              initialRoute: Routes.START,
              getPages: AppPages.routes,
            )),
  );
}
