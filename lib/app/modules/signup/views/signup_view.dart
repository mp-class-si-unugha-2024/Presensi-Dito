import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var formkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Card(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Text(
                  "REGISTRASI",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Masukan data diri dengan benar",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Nama wajib di isi";
                    }
                    if (!GetUtils.isEmail(value)) {
                      return "Masukan Nama dengan benar";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Nama",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "NIM wajib di isi";
                    }
                    if (!GetUtils.isEmail(value)) {
                      return "Masukan NIM dengan benar";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "NIM",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Semester wajib di isi";
                    }
                    if (!GetUtils.isEmail(value)) {
                      return "Masukan Semester dengan benar";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Semester",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Prodi wajib di isi";
                    }
                    if (!GetUtils.isEmail(value)) {
                      return "Masukan prodi dengan benar";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Prodi",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Alamat PKL wajib di isi";
                    }
                    if (!GetUtils.isEmail(value)) {
                      return "Masukan Alamat PKL dengan benar";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Alamat PKL",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Nomor WhatsApp wajib di isi";
                    }
                    if (!GetUtils.isEmail(value)) {
                      return "Masukan Nomor WhatsApp dengan benar";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Nomor WhatsApp",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email wajib di isi";
                    }
                    if (!GetUtils.isEmail(value)) {
                      return "Masukan email dengan Benar";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password wajib di isi";
                    }
                    if (value.length < 6) {
                      return "Password harus memiliki minimal 6 karakter";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    Text("Show password"),
                  ],
                ),
                Row(
                  children: [
                    Text("Lupa kata sandi"),
                    ElevatedButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()) {}
                      },
                      child: Text("Masuk"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
