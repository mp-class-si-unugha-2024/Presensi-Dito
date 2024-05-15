import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:presensi/app/routes/app_pages.dart';

import '../controllers/start_controller.dart';

class StartView extends GetView<StartController> {
  const StartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "presensi",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15),
          Text("Selamat datang di aplikasi presensi"),
          Text("Masuk atau daftar jika kamu belum memiliki akun"),
          SizedBox(height: 15),
          SizedBox(
            width: 280,
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.SIGNIN);
              },
              child: Text("Masuk"),
            ),
          ),
          SizedBox(height: 15),
          SizedBox(
            width: 280,
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.SIGNUP);
              },
              child: Text("Daftar"),
            ),
          ),
        ],
      ),
    ));
  }
}
