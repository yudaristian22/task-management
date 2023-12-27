import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/routes/app_pages.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        height: Get.height,
        color: AppColors.primaryBg,
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              //Logo
              height: 100,
              padding: const EdgeInsets.only(top: 30),
              width: double.infinity,
              alignment: Alignment.topCenter,
              child: const Image(
                image: AssetImage('assets/icons/icon.png'),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 100,
              child: Center(
                child: InkWell(
                  child: Column(children: [
                    Container(
                      height: 40,
                      width: 100,
                      decoration: Get.currentRoute == '/home'
                          ? BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black)
                          : const BoxDecoration(),
                      child: Icon(
                        Get.currentRoute == '/home'
                            ? Ionicons.home_outline
                            : Ionicons.home_outline,
                        color: AppColors.primaryBgText,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Home',
                      style: TextStyle(
                          color: AppColors.primaryBgText, fontSize: 16),
                    ),
                  ]),
                  onTap: () => Get.toNamed(Routes.HOME),
                ),
              ),
            ),
            SizedBox(
              height: 100,
              child: Center(
                child: InkWell(
                  child: Column(children: [
                    Container(
                      height: 40,
                      width: 100,
                      decoration: Get.currentRoute == '/task'
                          ? BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black)
                          : const BoxDecoration(),
                      child: Icon(
                        Get.currentRoute == '/task'
                            ? Ionicons.cube
                            : Ionicons.cube_outline,
                        color: AppColors.primaryBgText,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Task',
                      style: TextStyle(
                          color: AppColors.primaryBgText, fontSize: 16),
                    ),
                  ]),
                  onTap: () => Get.toNamed(Routes.TASK),
                ),
              ),
            ),
            SizedBox(
              height: 100,
              child: Center(
                child: InkWell(
                  child: Column(children: [
                    Container(
                      height: 40,
                      width: 100,
                      decoration: Get.currentRoute == '/friends'
                          ? BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black)
                          : const BoxDecoration(),
                      child: Icon(
                        Get.currentRoute == '/friends'
                            ? Ionicons.heart
                            : Ionicons.heart_outline,
                        color: AppColors.primaryBgText,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Friends',
                      style: TextStyle(
                          color: AppColors.primaryBgText, fontSize: 16),
                    ),
                  ]),
                  onTap: () => Get.toNamed(Routes.FRIENDS),
                ),
              ),
            ),
            SizedBox(
              height: 100,
              child: Center(
                child: InkWell(
                  child: Column(children: [
                    Container(
                      height: 40,
                      width: 100,
                      decoration: Get.currentRoute == '/profile'
                          ? BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black)
                          : const BoxDecoration(),
                      child: Icon(
                        Get.currentRoute == '/profile'
                            ? Ionicons.person
                            : Ionicons.person_outline,
                        color: AppColors.primaryBgText,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'profile',
                      style: TextStyle(
                          color: AppColors.primaryBgText, fontSize: 16),
                    ),
                  ]),
                  onTap: () => Get.toNamed(Routes.PROFILE),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
