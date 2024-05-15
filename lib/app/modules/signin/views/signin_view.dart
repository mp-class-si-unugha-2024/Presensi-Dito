import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({Key? key}) : super(key: key);
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
                  "Presensi",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Sign in",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email wajib di isi";
                    }
                    if (!GetUtils.isEmail(value)) {
                      return "Masukan email dengan benar";
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
