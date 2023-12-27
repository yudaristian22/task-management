import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue[100],
        body: Container(
          margin: context.isPhone
              ? EdgeInsets.all(Get.width * 0.1)
              : EdgeInsets.all(Get.height *
                  0.1), // Mengikuti ukuran layar tetapi tinggi tidak berubah
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.white),
          child: Row(children: [
            // Biru
            !context.isPhone
                ? Expanded(
                    child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50)),
                      color: Colors.blue,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Welcome",
                              style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  color: Colors.white,
                                  fontSize: 70),
                            ),
                            Text("Please Sign In",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30)),
                            Text("Start Your Journey With Us",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20))
                          ]),
                    ),
                  ))
                : const SizedBox(),
            // Putih
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  context.isPhone
                      ? const Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              Text(
                                "Welcome",
                                style: TextStyle(
                                    fontFamily: 'Pacifico',
                                    color: Colors.black,
                                    fontSize: 40),
                              ),
                              Text("Please Sign In",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20)),
                              Text("Start Your Journey With Us",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10))
                            ])
                      : const SizedBox(),
                  Image.asset(
                    'assets/images/login.png',
                    height: Get.height * 0.5,
                  ),
                  FloatingActionButton.extended(
                    onPressed: () => Get.toNamed(Routes.HOME),
                    backgroundColor: Colors.blue,
                    label: const Text(
                      'Sign In With Google',
                      style: TextStyle(color: Colors.white),
                    ),
                    icon: const Icon(
                      Ionicons.logo_google,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ))
          ]),
        ));
  }
}
