import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:taskapp/app/data/controller/auth_controller.dart';
import 'package:taskapp/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: context.isPhone
            ? EdgeInsets.all(Get.width * 0.1)
            : EdgeInsets.all(Get.height * 0.1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
        child: Row(
          children: [
            // Kiri
            !context.isPhone
                ? Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Welcome',
                                style: TextStyle(
                                  color: Color(0xFF176B87),
                                  fontSize: 70,
                                ),
                              ),
                              Text(
                                'Please Sign In',
                                style: TextStyle(
                                  color: Color(0xFF176B87),
                                  fontSize: 30,
                                ),
                              ),
                              Text(
                                'Start Journey With us',
                                style: TextStyle(
                                  color: Color(0xFF176B87),
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
            // Kanan
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
                        ? Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                                Text(
                                  'Welcome',
                                  style: TextStyle(
                                    color: Color(0xFF176B87),
                                    fontSize: 40,
                                  ),
                                ),
                                Text(
                                  'Please Sign In',
                                  style: TextStyle(
                                    color: Color(0xFF176B87),
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  'Start Journey With us',
                                  style: TextStyle(
                                    color: Color(0xFF176B87),
                                    fontSize: 15,
                                  ),
                                )
                              ])
                        : SizedBox(),
                    Image.asset(
                      'assets/images/login.png',
                      height: Get.height * 0.5,
                    ),
                    FloatingActionButton.extended(
                      onPressed: () => authC.signInWithGoogle(),
                      backgroundColor: Color(0xFF176B87),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
